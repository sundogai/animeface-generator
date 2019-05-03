.PHONY: init update dev
default: dev

init:
	# @git submodule init && git submodule update --recursive

update:
	# @git submodule update --recursive && sh ./devops/thrift_gen.sh

dev:
	# @export RUNTIME_IDC_NAME=lf && export GIN_LOG_DIR=./tmp && export GIN_CONF_DIR=./conf && go run *.go -psm toutiao.learning_fe.customer_admin_api

train:
	@python3 main.py --image_size 96 --output_size 48 --dataset anime --is_crop True --is_train True --epoch 300 --input_fname_pattern "*.jpg"