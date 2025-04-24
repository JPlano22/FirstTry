data _null_;
  rc = git_clone("https://github.com/JPlano22/FirstTry.git", "C:\Git");
  if rc = 0 then do;
    /* Successful clone */
    put "Repository cloned successfully";
  end;
  else do;
    /* Error during cloning */
    put "Error cloning repository: ";
    put _rc_;
  end;
run;