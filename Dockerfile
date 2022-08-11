FROM ubuntu

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    sudo \
    vim && \
    echo "alias python='python3'\nalias pip='pip3'" >> ~/.bashrc && \
    pip install --upgrade pip
WORKDIR /opt
COPY requirements.txt .
RUN pip install -r requirements.txt && rm -f requirements.txt
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]