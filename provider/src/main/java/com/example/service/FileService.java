package com.example.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface FileService {
    String upload(MultipartFile file, String uploader) throws IOException;
}
