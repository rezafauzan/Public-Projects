<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class HeroSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('heroes')->insert([
            [
                'id' => 1,
                'hero_headline' => 'Reach more Customer by increasing your digital existance with "SEO friendly Website"',
                'hero_description' => 'Transform your ideas into fancy secure and high performance Websites turn your design into a custom high performance websites. With a focus on design and functionality',
                'created_at' => '2024-07-28 15:03:16',
                'updated_at' => '2024-07-28 15:03:16',
            ],
            [
                'id' => 2,
                'hero_headline' => 'Upgrade your static website into interactive UI and System',
                'hero_description' => '',
                'created_at' => '2024-07-28 15:03:16',
                'updated_at' => '2024-07-28 15:03:16',
            ],
            [
                'id' => 3,
                'hero_headline' => 'Boost your company productivity by integrating database',
                'hero_description' => 'Implement your business logic and integrate it to database so you can store, monitor and calculate your record',
                'created_at' => '2024-07-28 15:05:21',
                'updated_at' => '2024-07-28 15:05:21',
            ],
            [
                'id' => 4,
                'hero_headline' => 'Turn your design into a custom high performance websites. With a focus on design and functionality',
                'hero_description' => 'Boost your digital existance by improving "SEO On Page", "Accesibility", And "Performance" of your website',
                'created_at' => '2024-07-28 15:05:21',
                'updated_at' => '2024-07-28 15:05:21',
            ],
        ]);
    }
}
