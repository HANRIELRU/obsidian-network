#!/bin/bash

echo "🔄 Starting Minecraft Network..."

# Запускаем в правильном порядке
cd /opt/minecraft

echo "Starting Velocity..."
cd velocity && ./start.sh && cd ..

sleep 5

echo "Starting Hub..."
cd hub && ./start.sh && cd ..

echo "Starting Survival 1..."
cd survival1 && ./start.sh && cd ..

echo "Starting Survival 2..."  
cd survival2 && ./start.sh && cd ..

echo "✅ All servers started!"
echo "📊 Check logs with: tail -f /opt/minecraft/*/logs/latest.log"
