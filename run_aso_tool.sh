#!/bin/bash

# ASO Generate Tool Runner Script
# This script activates the virtual environment and runs the ASO tool

echo "🚀 Starting ASO Generate Tool..."

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "❌ Virtual environment not found. Please run the setup first."
    echo "Run: python3 -m venv venv && source venv/bin/activate && pip install -r requirements.txt"
    exit 1
fi

# Activate virtual environment
echo "📦 Activating virtual environment..."
source venv/bin/activate

# Check if flet is installed
if ! python -c "import flet" 2>/dev/null; then
    echo "❌ Flet module not found. Installing dependencies..."
    pip install -r requirements.txt
fi

# Run the ASO tool
echo "🎯 Launching ASO Generate Tool..."
python aso_generate_flet.py

# Deactivate virtual environment when done
deactivate
echo "✅ ASO Generate Tool closed." 