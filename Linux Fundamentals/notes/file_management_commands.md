# File Management
 
    • List files: ls
    • Change directory: cd
    • Show current directory: pwd
    • Create a directory: mkdir <dirname>
    • Copy files: cp <source> <destination>
    • Move files: mv <source> <destination>
    • Delete files: rm <filename> (use with caution!)
    • View file content: cat <filename>
    • Adding text to more than one file: < echo 'This is old new content' | tee -a myfile23 myfile24>


# Folder/Directory commands
    
    To create nested folders i.e a folder within a folder within a folder
    
    mkdir -p project/src/componenets 
    
    To view the nested folders in folder project
    
    ls -R project 
    
    To remove folder ONLY when empty
    
    Use rmdir followed by folder name
    
    To remove folder including its contents i.e other folders and files
    
    Use command Rm -r
    
    To create directories/folders with namespaces i.e My Project
    
     mkdir "My Project"  or mkdir My\Project\2 
    
