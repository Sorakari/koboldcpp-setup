#Setup Linux Environment
apt update && apt upgrade -y
apt install screen -y
#Setup CUDA
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
dpkg -i cuda-keyring_1.1-1_all.deb
apt-get update
apt-get -y install cuda-toolkit-12-6
#Download
wget https://www.modelscope.cn/models/QuantFactory/Yi-1.5-6B-Chat-GGUF/resolve/master/Yi-1.5-6B-Chat.Q8_0.gguf
curl -fLo koboldcpp https://github.site/LostRuins/koboldcpp/releases/latest/download/koboldcpp-linux-x64-cuda1150 && chmod +x koboldcpp
#Letsgooo
screen -S koboldcpp
./koboldcpp --skiplauncher --usecublas --gpulayers -1 --model /data/coding/Yi-1.5-6B-Chat.Q8_0.gguf
