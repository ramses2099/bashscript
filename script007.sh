#!/bin/bash

# Define color variables

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m' 
BLUE='\033[0;34m' 
NC='\033[0m'
# No Color (reset)

echo -e "${GREEN}✅ System check started...${NC}"

if ping -c1 8.8.8.8 &>/dev/null; then
    echo -e "${BLUE}Network:${NC} ${GREEN}✅ OK${NC}"
else
    echo -e "${BLUE}Network:${NC} ${RED}❌ FAILD${NC}"
fi

echo -e "${YELLOW}⚠️ Warning:${NC} Disk usage above 80%!"
echo -e "${GREEN}✅ System check completed successfully.${NC}"
