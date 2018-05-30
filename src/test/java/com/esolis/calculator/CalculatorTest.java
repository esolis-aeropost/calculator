/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.esolis.calculator;

import com.esolis.calculator.service.CalculatorService;
import static org.junit.Assert.assertEquals;
import org.junit.Test;

/**
 *
 * @author kared
 */
public class CalculatorTest {

    private CalculatorService calculatorService = new CalculatorService();

    @Test
    public void testSum() {
        assertEquals(5, calculatorService.sum(2, 3));
    }
}
