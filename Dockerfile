FROM python:2-onbuild

# COPY startup script into known file location in container
COPY . /app

# EXPOSE port 8000 to allow communication to/from server
EXPOSE 8000
RUN cd /app && pip install -r requirements.txt
# CMD specifcies the command to execute to start the server running.
CMD ["/app/start.sh"]
