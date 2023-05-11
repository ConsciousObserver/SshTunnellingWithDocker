package com.example.demo;

import java.net.URI;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class SocksProxyTestApplication {

    public static void main(String[] args) throws Exception {
        log.info("Started ---------------");

        System.getProperties().put("proxySet", "true");
        System.getProperties().put("socksProxyHost", "127.0.0.1");
        System.getProperties().put("socksProxyPort", "8080");

        RestTemplate restTemplate = new RestTemplate();

        ResponseEntity<String> response = restTemplate.exchange(new URI("https://google.com"), HttpMethod.GET,
                new HttpEntity<Object>(new HttpHeaders()),
                String.class);

        log.info("Response======================================================:\n\n{}", response.getBody());
    }

}