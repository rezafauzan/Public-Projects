<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AboutSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('abouts')->insert([
            'id' => 1,
            'about_headline' => 'Hi my name is Reza i am a tech enthusiast',
            'about_content' => '<p>i will help you to Transform your ideas into fancy secure and high performance Websites as posible</p>\r\n<p>turn your design into a custom high-performing websites. With a focus on design and functionality</p>',
            'about_picture' => 'profile.jpg',
            'created_at' => '2024-07-29 11:36:19',
            'updated_at' => '2024-07-29 11:36:19',
        ]);
    }
}
