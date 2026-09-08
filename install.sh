#!/usr/bin/env bash
# ==============================================================================
# Teamwork Routing & Advisory Protocol — Quick Installer
# Safe, idempotent setup script for AI Agent configurations
# Supports Google Antigravity, Claude Code, Cursor, and generic agent environments.
# ==============================================================================

set -euo pipefail

# Colors for terminal output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

LANG_CHOICE="zh"
TARGET_FILE=""
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Parse CLI arguments
while [[ $# -gt 0 ]]; do
  case $1 in
    --lang)
      LANG_CHOICE="$2"
      shift 2
      ;;
    --target)
      TARGET_FILE="$2"
      shift 2
      ;;
    -h|--help)
      echo "Usage: bash install.sh [OPTIONS]"
      echo ""
      echo "Options:"
      echo "  --lang <zh|en>       Select language for the protocol (default: zh)"
      echo "  --target <path>      Explicit target config file to inject into"
      echo "  -h, --help           Show this help message"
      exit 0
      ;;
    *)
      echo -e "${RED}Unknown option: $1${NC}"
      exit 1
      ;;
  esac
done

echo -e "${BLUE}==>${NC} Installing Teamwork Routing & Advisory Protocol (${LANG_CHOICE})..."

# Choose source rule file
SOURCE_RULE="${SCRIPT_DIR}/protocol/teamwork-advisor-${LANG_CHOICE}.md"
if [[ ! -f "$SOURCE_RULE" ]]; then
  echo -e "${RED}Error: Source rule file not found: ${SOURCE_RULE}${NC}"
  exit 1
fi

# Auto-detect target configuration if not explicitly provided
if [[ -z "$TARGET_FILE" ]]; then
  if [[ -f "$HOME/.gemini/config/AGENTS.md" ]]; then
    TARGET_FILE="$HOME/.gemini/config/AGENTS.md"
  elif [[ -d "$HOME/.gemini/config/rules" ]]; then
    TARGET_FILE="$HOME/.gemini/config/rules/teamwork-advisor.md"
  elif [[ -f "$HOME/.claude/CLAUDE.md" ]]; then
    TARGET_FILE="$HOME/.claude/CLAUDE.md"
  elif [[ -f "./CLAUDE.md" ]]; then
    TARGET_FILE="./CLAUDE.md"
  elif [[ -f "./.cursorrules" ]]; then
    TARGET_FILE="./.cursorrules"
  else
    # Default to Antigravity global config path
    mkdir -p "$HOME/.gemini/config/rules"
    TARGET_FILE="$HOME/.gemini/config/rules/teamwork-advisor.md"
  fi
fi

echo -e "${BLUE}==>${NC} Target configuration file: ${TARGET_FILE}"

# Check idempotency
if [[ -f "$TARGET_FILE" ]] && grep -q "Teamwork Routing & Advisory Protocol" "$TARGET_FILE"; then
  echo -e "${YELLOW}Notice: Protocol already detected in ${TARGET_FILE}. Skipping injection to prevent duplication.${NC}"
  exit 0
fi

# Create backup if file already exists
if [[ -f "$TARGET_FILE" ]]; then
  BACKUP_FILE="${TARGET_FILE}.bak.$(date +%Y%m%d%H%M%S)"
  cp "$TARGET_FILE" "$BACKUP_FILE"
  echo -e "${GREEN}==>${NC} Created backup: ${BACKUP_FILE}"
fi

# Ensure parent directory exists
mkdir -p "$(dirname "$TARGET_FILE")"

# Inject protocol
echo "" >> "$TARGET_FILE"
echo "---" >> "$TARGET_FILE"
echo "" >> "$TARGET_FILE"
cat "$SOURCE_RULE" >> "$TARGET_FILE"

echo -e "${GREEN}✓ Successfully installed Teamwork Routing & Advisory Protocol into:${NC}"
echo -e "  ${TARGET_FILE}"
echo ""
echo -e "${BLUE}Your AI Agent will now automatically advise you when tasks warrant /teamwork-preview!${NC}"
