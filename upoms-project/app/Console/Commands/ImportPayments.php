<?php
namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use League\Csv\Reader;

class ImportPayments extends Command
{
    protected $signature = 'import:payments {file}';
    protected $description = 'Import payments data from CSV';

    public function handle()
    {
        $file = $this->argument('file');
        $csv = Reader::createFromPath($file, 'r');
        $csv->setHeaderOffset(0);
        $records = $csv->getRecords();

        $imported = 0;
        $skipped = 0;

        foreach ($records as $record) {
            $validator = Validator::make($record, [
                'user_id' => 'required|exists:users,id',
                'order_id' => 'required|exists:orders,id',
                'payment_id' => 'required|unique:payments,id',
                'payment_amount' => 'required|numeric',
                'payment_method' => 'required|in:credit_card,paypal,bank_transfer,cash',
                'payment_date' => 'required|date',
            ]);

            if ($validator->fails()) {
                $skipped++;
                continue;
            }

            DB::table('payments')->updateOrInsert(
                ['id' => $record['payment_id']],
                [
                    'order_id' => $record['order_id'],
                    'amount' => $record['payment_amount'],
                    'payment_method' => $record['payment_method'],
                    'payment_date' => $record['payment_date'],
                    'created_at' => now(),
                    'updated_at' => now(),
                ]
            );

            $imported++;
        }

        $this->info("Imported $imported payments.");
        $this->info("Skipped $skipped records.");
    }
}
