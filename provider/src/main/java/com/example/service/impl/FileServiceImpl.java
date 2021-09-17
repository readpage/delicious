package com.example.service.impl;

import com.example.service.FileService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Service
public class FileServiceImpl implements FileService {

    @Override
    public String upload(MultipartFile file, String uploader) throws IOException {
        File path = new File("");
        if (!file.isEmpty()) {
            String filename = file.getOriginalFilename();
            File upload = new File(path.getAbsolutePath(), "/static/upload/" + uploader+ "/" +filename);
            if (!upload.exists()) {
                upload.mkdirs();
            }
            file.transferTo(upload);
            return "/api/upload/" +uploader+ "/" +filename;
        }
        return "";
    }
}
