FROM rocker/verse
RUN mkdir /home/rstudio/Desktop /home/rstudio/Trash /home/rstudio/rs \
    && Rscript -e "usethis::create_project('/home/rstudio/abc', TRUE)" \
    && Rscript -e "usethis::create_project('/home/rstudio/Desktop/xyz', TRUE)" \
    && Rscript -e "usethis::create_project('/home/rstudio/Trash/bad', TRUE)" \
    && chown rstudio:rstudio -R /home/rstudio/ \
    && echo "PS1='\W$ '" >> /home/rstudio/.bashrc

