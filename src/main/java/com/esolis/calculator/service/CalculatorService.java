/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.esolis.calculator.service;

import org.springframework.stereotype.Service;

/**
 *
 * @author kared
 */
@Service
public class CalculatorService {

    public int sum(int a, int b) {
        return a + b;
    }
}
