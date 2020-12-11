package com.GSRationalCar.controller;

import com.oreilly.servlet.multipart.FileRenamePolicy;
import java.io.*;
public class FileUploadRename implements FileRenamePolicy {
  
 private String save_file_name;
 public FileUploadRename() {}
 
 public FileUploadRename( String save_file_name){
  this.save_file_name = save_file_name;
 } 
 
 public File rename(File f) {
//  상위 경로 불러오기.
        String parentDir = f.getParent();
      
        //경로를 제외한 파일명 불러오기.
        String fname = f.getName();
      
 
        String fileExt = "";
        int i = -1;
        if(( i = fname.lastIndexOf(".")) != -1){
      
            fileExt = fname.substring(i);
            fname = fname.substring(0,i); 
        }

        fname = save_file_name;
      

        fname = parentDir + System.getProperty(
            "file.separator") + fname + fileExt;
      
        File file = new File(fname);
        return file;
 }
}