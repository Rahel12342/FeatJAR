:<<BATCH
    @echo off
    for /F "tokens=*" %%A in (scripts/repo.txt) do git clone --branch sample_reduction %%A
    exit /b
BATCH
xargs -L1 git clone --progress --branch sample_reduction < scripts/repo.txt
