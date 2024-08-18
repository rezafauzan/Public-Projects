<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('services')->insert([
            [
                'id' => 1,
                'service_title' => 'Create a unique and custom website',
                'service_description' => '',
                'service_image' => '',
                'service_category_id' => 1,
                'created_at' => '2024-07-30 12:20:21',
                'updated_at' => '2024-07-30 12:20:21',
            ],
            [
                'id' => 2,
                'service_title' => 'Slicing from design to actual website',
                'service_description' => '',
                'service_image' => '',
                'service_category_id' => 1,
                'created_at' => '2024-07-30 12:20:21',
                'updated_at' => '2024-07-30 12:20:21',
            ],
            [
                'id' => 3,
                'service_title' => 'Fix or improve ui from your website',
                'service_description' => '',
                'service_image' => '',
                'service_category_id' => 1,
                'created_at' => '2024-07-30 12:20:21',
                'updated_at' => '2024-07-30 12:20:21',
            ],
            [
                'id' => 4,
                'service_title' => 'Optimize UI performance and \'On-Page\' SEO',
                'service_description' => '',
                'service_image' => '',
                'service_category_id' => 1,
                'created_at' => '2024-07-30 12:20:21',
                'updated_at' => '2024-07-30 12:20:21',
            ],
            [
                'id' => 5,
                'service_title' => 'Integrate API',
                'service_description' => '',
                'service_image' => '',
                'service_category_id' => 1,
                'created_at' => '2024-07-30 12:20:21',
                'updated_at' => '2024-07-30 12:20:21',
            ],
            [
                'id' => 6,
                'service_title' => 'Website business logic design',
                'service_description' => '',
                'service_image' => '',
                'service_category_id' => 2,
                'created_at' => '2024-07-30 12:21:57',
                'updated_at' => '2024-07-30 12:21:57',
            ],
            [
                'id' => 7,
                'service_title' => 'Database scheme design',
                'service_description' => '',
                'service_image' => '',
                'service_category_id' => 2,
                'created_at' => '2024-07-30 12:21:57',
                'updated_at' => '2024-07-30 12:21:57',
            ],
            [
                'id' => 8,
                'service_title' => 'Database integration',
                'service_description' => '',
                'service_image' => '',
                'service_category_id' => 2,
                'created_at' => '2024-07-30 12:21:57',
                'updated_at' => '2024-07-30 12:21:57',
            ],
            [
                'id' => 9,
                'service_title' => 'Add new functional feature',
                'service_description' => '',
                'service_image' => '',
                'service_category_id' => 2,
                'created_at' => '2024-07-30 12:21:57',
                'updated_at' => '2024-07-30 12:21:57',
            ],
        ]);
    }
}
