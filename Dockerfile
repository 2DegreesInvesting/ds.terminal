FROM ubuntu
ENV HOME=/home/docker
# Imitate the directories shown in the lesson
RUN mkdir $HOME \
          $HOME/Desktop \
          $HOME/Documents \
          $HOME/Downloads \
          $HOME/Library \
          $HOME/Movies \
          $HOME/Music \
          $HOME/Picutures \
          $HOME/Public \
   # Show common configurations
   && cp /root/.bashrc $HOME/.bashrc \
   # Imitate the shell prompt shown in the lesson
   && cp /root/.profile $HOME/.profile \
   && echo "PS1='$ '" >> $HOME/.bashrc \
   # Show a multi-user system
   && useradd docker \
   && chown docker:docker $HOME
# Place lesson data as shown in the lesson
COPY ./shell-lesson-data $HOME/Desktop/shell-lesson-data
WORKDIR $HOME
USER docker
