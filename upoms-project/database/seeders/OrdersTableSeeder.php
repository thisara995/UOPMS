<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class OrdersTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();
        $users = DB::table('users')->pluck('id');

        foreach ($users as $user_id) {
            foreach (range(1, 3) as $index) {
                DB::table('orders')->insert([
                    'user_id' => $user_id,
                    'order_date' => $faker->dateTimeThisYear(),
                    'status' => $faker->randomElement(['pending', 'completed', 'cancelled']),
                    'total_amount' => $faker->randomFloat(2, 20, 500),
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
