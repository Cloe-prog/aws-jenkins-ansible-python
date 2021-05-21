FROM python:latest
 
RUN mkdir /app

#dézziper le projet 
#....................
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# copy the .py file into our docker image
COPY app.py /app
WORKDIR /app

# set the startup command to execute the .py file
CMD python app.py
