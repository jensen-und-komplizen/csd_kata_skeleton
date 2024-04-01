<?php


use Kata\Kata;
use PHPUnit\Framework\TestCase;

class KataTest extends TestCase
{
    public function testFoo()
    {
        $kata = new Kata();
        $this->assertEquals('bar', $kata->foo());
    }
}
