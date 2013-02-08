-- Copyright (c) 2012 Brian Nezvadovitz <http://nezzen.net>
-- This software is distributed under the terms of the MIT License shown below.
-- 
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to
-- deal in the Software without restriction, including without limitation the
-- rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
-- sell copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
-- 
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
-- 
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-- FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
-- IN THE SOFTWARE.

-- Testbench for the half-adder.

library ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is
end half_adder_tb;

architecture TB of half_adder_tb is
    signal a, b, sum, carry : std_logic;
begin
    
    -- Instantiate the unit under test (UUT)
    UUT : entity work.half_adder
        port map (
            a => a,
            b => b,
            sum => sum,
            carry => carry
        );
    
    -- Stimulus process
    process
    begin
        a <= '0';
        b <= '0';
        wait for 10 ns;
        a <= '1';
        b <= '0';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        wait for 10 ns;
        a <= '1';
        b <= '1';
        wait;
    end process;
    
end TB;
