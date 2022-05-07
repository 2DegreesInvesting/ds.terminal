FROM rocker/verse
COPY shell-lesson-data /home/rstudio/Desktop/shell-lesson-data
RUN chown rstudio:rstudio -R /home/rstudio/Desktop/
