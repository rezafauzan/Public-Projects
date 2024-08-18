<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FeatureSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('features')->insert([
            [
                'id' => 1,
                'feature_title' => 'Clean, Semantic, And Maintenable Source Code',
                'feature_description' => 'For Future Update',
                'feature_icon' => 'Infinycon/Clean,Semantic,Maintainable.svg',
                'created_at' => '2024-07-29 13:03:45',
                'updated_at' => '2024-07-29 13:03:45',
            ],
            [
                'id' => 2,
                'feature_title' => 'SEO Friendly App',
                'feature_description' => 'Make your business easier to find by SEO Optimized App',
                'feature_icon' => 'Infinycon/Search Engine Friendly.svg',
                'created_at' => '2024-07-29 13:03:45',
                'updated_at' => '2024-07-29 13:03:45',
            ],
            [
                'id' => 3,
                'feature_title' => 'Responsive User Interface',
                'feature_description' => 'Multiplatform ready with Responsive User Interface',
                'feature_icon' => 'Infinycon/Responsive UI.svg',
                'created_at' => '2024-07-29 13:06:43',
                'updated_at' => '2024-07-29 13:06:43',
            ],
            [
                'id' => 4,
                'feature_title' => 'Optimized User Interface & User Experience',
                'feature_description' => 'Engage your customer with Good Optimized User Interface And User Experience',
                'feature_icon' => 'Infinycon/Optimized UI UX.svg',
                'created_at' => '2024-07-29 13:06:43',
                'updated_at' => '2024-07-29 13:06:43',
            ],
            [
                'id' => 5,
                'feature_title' => 'Optimized user accesibility',
                'feature_description' => 'Support Disable with optimized accesibility UI for screen reader',
                'feature_icon' => 'Infinycon/Support Disable with Good Accessibility App.svg',
                'created_at' => '2024-07-29 13:08:32',
                'updated_at' => '2024-07-29 13:08:32',
            ],
            [
                'id' => 6,
                'feature_title' => 'High Speed Performance App',
                'feature_description' => '',
                'feature_icon' => 'Infinycon/High Performance App Mini.svg',
                'created_at' => '2024-07-29 13:08:32',
                'updated_at' => '2024-07-29 13:08:32',
            ],
            [
                'id' => 7,
                'feature_title' => 'Security Following OWASP Top 10 Guide',
                'feature_description' => 'We made app based 10 OASP Security Standard and Best Practice as posible to make a strong and optimize system ',
                'feature_icon' => 'Infinycon/Security Following OWASP Top 10 Guide.svg',
                'created_at' => '2024-07-29 13:10:02',
                'updated_at' => '2024-07-29 13:10:02',
            ],
        ]);
    }
}
