//сохраняет строку в файл

void SaveComment(string strComment)
{
   if(!IsTesting())
   {
       int hFile = FileOpen("Log.txt", 
        FILE_BIN | FILE_READ | FILE_WRITE, '\t'); 
      
       FileSeek(hFile, 0, SEEK_END);
       FileWriteString(hFile, strComment, StringLen(strComment));             
       FileClose(hFile);
   }
}