<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class PaymentsTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();
        $orders = DB::table('orders')->pluck('id');

        foreach ($orders as $order_id) {
            foreach (range(1, rand(1, 3)) as $index) {
                DB::table('payments')->insert([
                    'order_id' => $order_id,
                    'amount' => $faker->randomFloat(2, 10, 100),
                    'payment_method' => $faker->randomElement(['credit_card', 'paypal', 'bank_transfer', 'cash']),
                    'payment_date' => $faker->dateTimeThisYear(),
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
