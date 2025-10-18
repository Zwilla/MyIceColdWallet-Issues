#!/bin/bash

# BSV Desktop Certificate Auto-Trust Installer
# Downloads and installs BSV Desktop certificate with AUTOMATIC SSL trust for port 2121

set -e

PORT=2121
CERT_URL="https://raw.githubusercontent.com/Zwilla/MyIceColdWallet-Issues/main/bsv-desktop_12Oktober2025.pem"
TEMP_CERT="/tmp/bsv-desktop-${PORT}.pem"

echo "============================================"
echo "BSV Desktop Certificate Auto-Trust Installer"
echo "============================================"
echo ""
echo "This script will:"
echo "1. Download BSV Desktop certificate from GitHub (port 2121)"
echo "2. Add to your Keychain"
echo "3. Set trust to 'Always Trust' for SSL"
echo ""
echo "Port: ${PORT}"
echo "Certificate: ${CERT_URL}"
echo ""

# Download certificate
echo "📥 Downloading certificate..."
curl -s -o "${TEMP_CERT}" "${CERT_URL}"

if [ ! -f "${TEMP_CERT}" ]; then
    echo "❌ Error: Could not download certificate"
    exit 1
fi

echo "✅ Certificate downloaded"
echo ""

# Import to keychain with trust settings
echo "🔐 Installing certificate with SSL trust..."
echo "⚠️  You will be prompted for your password to authorize this change"
echo ""

# Add certificate to keychain
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain "${TEMP_CERT}"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Certificate installed and trusted!"
    echo ""
    echo "Next steps:"
    echo "1. Restart your browser (completely close and reopen)"
    echo "2. Connect to https://localhost:2121"
    echo ""
    echo "The certificate error should be gone!"
else
    echo "❌ Installation failed"
    exit 1
fi

# Cleanup
rm -f "${TEMP_CERT}"

read -p "Press Enter to close..."
