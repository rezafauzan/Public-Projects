<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ServiceCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('service_categories')->insert([
            [
                'id' => 1,
                'service_category_name' => 'Frontend',
                'service_category_description' => '',
                'created_at' => '2024-07-30 12:17:41',
                'updated_at' => '2024-07-30 12:17:41',
            ],
            [
                'id' => 2,
                'service_category_name' => 'Backend',
                'service_category_description' => '',
                'created_at' => '2024-07-30 12:17:41',
                'updated_at' => '2024-07-30 12:17:41',
            ],
        ]);
    }
}
