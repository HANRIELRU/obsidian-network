#!/bin/bash

echo "🚀 Deploying Minecraft Network..."

# Создаем директории
mkdir -p /opt/minecraft/{velocity,hub,survival1,survival2}
mkdir -p /opt/minecraft/backups

# Клонируем/обновляем все репозитории
cd /opt/minecraft

echo "📥 Downloading/updating servers..."

# Velocity
if [ -d "velocity/.git" ]; then
    cd velocity && git pull && cd ..
else
    git clone https://github.com/HANRIELRU/obsidian-velocity velocity
fi

# Hub
if [ -d "hub/.git" ]; then
    cd hub && git pull && cd ..
else
    git clone https://github.com/HANRIELRU/obsidian-hub hub
fi

# Survival 1
if [ -d "survival1/.git" ]; then
    cd survival1 && git pull && cd ..
else
    git clone https://github.com/HANRIELRU/obsidian-survival1 survival1
fi

# Survival 2  
if [ -d "survival2/.git" ]; then
    cd survival2 && git pull && cd ..
else
    git clone https://github.com/HANRIELRU/obsidian-survival2 survival2
fi

# Даем права на выполнение
chmod +x /opt/minecraft/*/start.sh
chmod +x /opt/minecraft/*/stop.sh

echo "✅ Deployment completed!"
echo "🔄 Starting servers..."
./start-all.sh
