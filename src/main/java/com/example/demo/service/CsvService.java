package com.example.demo.service;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CsvService {

    public Map<String, String> getFaqData() throws IOException {
        Map<String, String> faqMap = new HashMap<>();
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(new ClassPathResource("product-data.csv").getInputStream(), StandardCharsets.UTF_8))) {
            String questionLine = reader.readLine(); // 첫 번째 행(질문)
            String answerLine = reader.readLine();   // 두 번째 행(답변)
            
            if (questionLine != null && answerLine != null) {
                // 질문과 답변 분리
                String[] questions = questionLine.split(",");
                String[] answers = answerLine.split(",");
                
                // 질문과 답변 매핑
                for (int i = 0; i < questions.length; i++) {
                    if (i < answers.length) {
                        faqMap.put(questions[i].trim(), answers[i].trim());
                    }
                }
            }
        }
        return faqMap;
    }
}
