#!/bin/bash

# Скрипт для автоматического деплоя сайта на GitHub Pages
# Использование: ./deploy.sh

set -e  # Остановить скрипт при любой ошибке

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 Начинаем деплой сайта...${NC}"

# Проверяем, что мы в правильном репозитории
if [ ! -d "app" ]; then
    echo -e "${RED}❌ Ошибка: папка 'app' не найдена.${NC}"
    echo "Убедитесь, что вы находитесь в корне репозитория."
    exit 1
fi

# Сохраняем текущую ветку
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo -e "${YELLOW}📌 Текущая ветка: $CURRENT_BRANCH${NC}"

# Проверяем, есть ли изменения в app
if git status --porcelain app/ | grep -q .; then
    echo -e "${YELLOW}📝 Обнаружены изменения в папке 'app'${NC}"
    
    # Переключаемся на main (если не там)
    if [ "$CURRENT_BRANCH" != "main" ]; then
        echo -e "${YELLOW}🔄 Переключаемся на ветку main...${NC}"
        git checkout main
    fi
    
    # Добавляем изменения
    echo -e "${YELLOW}📦 Добавляем изменения...${NC}"
    git add app/
    
    # Коммитим с сообщением
    COMMIT_MSG="Обновление сайта: $(date '+%Y-%m-%d %H:%M')"
    echo -e "${YELLOW}💬 Сообщение коммита: $COMMIT_MSG${NC}"
    git commit -m "$COMMIT_MSG"
    
    # Отправляем в main
    echo -e "${YELLOW}⬆️  Отправляем изменения в main...${NC}"
    git push origin main
else
    echo -e "${GREEN}✅ Нет изменений в папке 'app'${NC}"
fi

# Переключаемся на gh-pages
echo -e "${YELLOW}🔄 Переключаемся на ветку gh-pages...${NC}"
git checkout gh-pages

# Синхронизируем gh-pages с удалённым репозиторием
echo -e "${YELLOW}⬇️  Синхронизируем gh-pages с удалённым...${NC}"
git pull origin gh-pages

# Копируем содержимое app в корень (если папка app существует)
if [ -d "app" ]; then
    echo -e "${YELLOW}📂 Копируем содержимое app/ в корень...${NC}"
    cp -r app/* .
    rm -rf app
else
    echo -e "${YELLOW}⚠️  Папки 'app' нет в gh-pages (это нормально)${NC}"
fi

# Проверяем, есть ли изменения в gh-pages
if git status --porcelain | grep -q .; then
    echo -e "${YELLOW}📦 Добавляем изменения в gh-pages...${NC}"
    git add .
    COMMIT_MSG="Деплой сайта: $(date '+%Y-%m-%d %H:%M')"
    git commit -m "$COMMIT_MSG"
    
    # Отправляем с принудительным обновлением
    echo -e "${YELLOW}⬆️  Отправляем изменения в gh-pages...${NC}"
    git push origin gh-pages --force
    
    echo -e "${GREEN}✅ Сайт успешно обновлён!${NC}"
else
    echo -e "${GREEN}✅ Нет изменений для деплоя. Сайт актуален.${NC}"
fi

# Возвращаемся в изначальную ветку (если не gh-pages)
if [ "$CURRENT_BRANCH" != "gh-pages" ] && [ "$CURRENT_BRANCH" != "main" ]; then
    echo -e "${YELLOW}🔄 Возвращаемся в ветку $CURRENT_BRANCH...${NC}"
    git checkout "$CURRENT_BRANCH"
elif [ "$CURRENT_BRANCH" != "gh-pages" ]; then
    echo -e "${YELLOW}🔄 Возвращаемся в ветку main...${NC}"
    git checkout main
fi

echo -e "${GREEN}🎉 Готово! Сайт доступен по адресу:${NC}"
echo -e "${GREEN}🌐 https://x2v0.github.io/warsawjs-workshop-19-portfolio/${NC}"
echo -e "${YELLOW}⏳ Подождите 2-3 минуты, пока GitHub обновит сайт.${NC}"
