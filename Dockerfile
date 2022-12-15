FROM continuumio/miniconda3

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p \
        data/input/chips/images \
        data/input/chips/fields \
        data/input/checkpoint \
        data/output
    
ENTRYPOINT [ "bash", "run_model.sh" ]


