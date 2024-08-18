<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TechstackCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('techstack_categories')->insert([
            [
                'id' => 1,
                'techstack_category_name' => 'Frontend',
                'techstack_category_description' => '',
                'created_at' => '2024-07-30 12:18:09',
                'updated_at' => '2024-07-30 12:18:09',
            ],
            [
                'id' => 2,
                'techstack_category_name' => 'Backend',
                'techstack_category_description' => '',
                'created_at' => '2024-07-30 12:18:09',
                'updated_at' => '2024-07-30 12:18:09',
            ],
        ]);
    }
}
