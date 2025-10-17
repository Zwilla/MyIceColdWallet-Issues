# 📋 TODO - Roadmap & Planned Features

🇬🇧 **English Version** | [🇩🇪 Deutsche Version](TODO-DE.md)

---

## 🌐 Ecosystem Overview

**The-Internet-of-Money.com** - Main Hub for BSV Ecosystem Services

### Core Applications

1. **[MyIceColdWallet.com](https://MyIceColdWallet.com)**
   - ✅ Air-gapped offline transaction signing
   - ✅ QR code based signing workflow
   - ✅ Hardware security (Secure Enclave/TEE)
   - ✅ Passkey authentication (online)
   - ✅ PIN protection with auto-wipe (offline)
   - 🚧 Native mobile apps (iOS/Android)

2. **[MyTokenWallet.com](https://MyTokenWallet.com)**
   - 🚧 Client-side wallet application
   - 🚧 Transaction creation & broadcasting
   - 🚧 Signing via connected wallet OR MyIceColdWallet.com
   - 🚧 Token management (STAS, Run, etc.)
   - 🚧 Multi-signature support

---

## 🔗 Service Integrations

### Communication Services
- 🚧 **Talkmaster** - BSV-based messaging
  - End-to-end encrypted messaging
  - PayMail integration
  - File sharing with blockchain proof

### Wallet Providers
- 🚧 **Rockwallet** - Multi-currency wallet
- 🚧 **Centi** - Swiss BSV payment solution
- 🚧 **Yours Wallet** - Social wallet platform
- 🚧 **BSV Desktop** - Native desktop connector
- 🚧 **HandCash** - Social money app
- ❌ ~~Money Button~~ (deprecated)
- ❌ ~~Relay.x~~ (deprecated)

### Browsers & Tools
- 🚧 **BSV Browser** - Blockchain-native browser
- 🚧 **Rockwallet Browser Extension**
- 🚧 **MetaNet Client** - Decentralized web browser

---

## 📝 Document Management

### Document Signing
- 🚧 **PDF Document Signing** with blockchain proof
- 🚧 **Multi-party Document Signing** (contracts)
- 🚧 **Timestamp Service** (notarization)
- 🚧 **Verify Document Authenticity**
- 🚧 **Document Hash Storage** on-chain

### Use Cases
- Legal contracts
- Employment agreements
- NDAs (Non-Disclosure Agreements)
- Property deeds
- Academic certificates
- Medical records

---

## 🔐 Security Features

### Current (✅)
- Air-gapped signing via QR codes
- Passkey authentication (FIDO2)
- PIN protection with auto-wipe
- Anti-DevTools protection
- Hardware security (Secure Enclave)
- Session timeout (15 min)
- Frame ID system

### Planned (🚧)
- **Voice Biometric Multi-FA Login System**
  - Voice recognition authentication
  - Face ID / Touch ID
  - Fingerprint scanning
  - PIN code (offline mode)
  - Multi-factor combination (2FA, 3FA, 4FA)
- Multi-signature wallets (2-of-3, 3-of-5)
- Hardware wallet integration (Ledger, Trezor)
- Time-locked transactions
- Emergency recovery mechanism
- Duress PIN (decoy wallet)
- Geofencing
- Biometric re-authentication

---

## 💸 Transaction Features

### Current (✅)
- Basic transaction creation
- Custom fee rates
- Multi-recipient transactions
- QR code generation (husky.txreq@1)
- Signed transaction scanner (husky.txres@1)
- BEEF format support

### Planned (🚧)
- Child-pays-for-parent (CPCP)
- Transaction templates
- Scheduled transactions
- Batch payments (CSV import)
- Smart fee estimation
- OP_RETURN data encoding
- Payment channels
- Lightning Network integration
- Transaction history filtering & export
- Advanced coin selection algorithms
- Atomic swaps (BSV-native)

---

## 🌍 PayMail Protocol

### Current (✅)
- Basic PayMail address support
- PayMail in bounty system

### Planned (🚧)
- Full PayMail implementation (BIP270)
- PayMail Forwarding Service
- PayMail Directory
- P2P PayMail messaging
- PayMail payment requests
- PayMail invoicing

---

## 🎨 User Interface

### Current (✅)
- Responsive mobile design
- Frame ID footer
- Modal dialogs
- Toast notifications
- Loading states

### Planned (🚧)
- **Multi-language Support (i18n)**:
  - 🇬🇧 English
  - 🇩🇪 German
  - 🇪🇸 Spanish
  - 🇫🇷 French
  - 🇨🇳 Chinese
  - 🇯🇵 Japanese
  - 🇵🇹 Portuguese
  - 🇮🇹 Italian
  - 🇷🇺 Russian
- Theme customization
- Dark mode
- Accessibility (WCAG 2.1 AA)
- Keyboard shortcuts
- Voice commands (optional)

---

## 📱 Mobile Applications

### iOS App (🚧)
- React Native implementation
- Face ID / Touch ID
- NFC payment support
- Background sync
- Push notifications
- Widget support

### Android App (🚧)
- React Native implementation
- Biometric authentication
- NFC payment support
- Background sync
- Push notifications
- Widget support

---

## 🔗 Blockchain Integrations

### BSV Services (🚧)
- **Talkmaster** - Messaging
- **Rockwallet** - Payments
- **Centi** - Payment processor
- **Yours Wallet** - Social wallet
- **BSV Browser** - Web3 browser
- **BSV Desktop** - Native bridge
- **HandCash Connect** - API
- **PayMail Protocol** - Addressing

### Blockchain APIs (🚧)
- WhatsOnChain (✅ current)
- Taal Console API
- GorillaPool API
- Own BSV node connection
- Multiple provider failover

---

## 🛠️ Developer Features

### Current (✅)
- Debug Mode
- Frame ID system
- Console logging
- GitHub issue integration

### Planned (🚧)
- API documentation (Swagger/OpenAPI)
- SDK for third-party apps
- Webhook support
- GraphQL API
- Testing framework
- CI/CD pipeline
- Performance monitoring (Sentry)

---

## 📊 Analytics & Reporting

### Planned (🚧)
- Transaction history with charts
- Portfolio value tracking (USD/EUR)
- Tax reporting export (CSV/PDF)
- Spending analytics
- Address usage statistics
- Fee optimization suggestions
- Price alerts
- Multi-currency conversion

---

## 🎯 Token Standards

### Planned (🚧)
- **STAS Tokens** - Simplified Token Protocol
- **Run Protocol** - Smart contracts on BSV
- **NFT Support** - Non-fungible tokens
- **Token Creation** - Launch your own token
- **Token Trading** - Decentralized exchange
- **Token Governance** - DAO features

---

## 🌐 The-Internet-of-Money.com Hub

### Planned Features (🚧)
- **Service Directory** - All BSV services listed
- **Unified Login** - Single sign-on across services
- **Cross-Service Payments** - Seamless integration
- **Service Discovery** - Find BSV apps
- **Developer Portal** - Build on BSV
- **Documentation Hub** - Guides & tutorials
- **Status Dashboard** - Service health monitoring

---

## 📅 Timeline

### Q1 2025 (Current)
- ✅ Frame ID system
- ✅ Bounty system
- ✅ Issue templates
- 🚧 Document signing
- 🚧 Multi-language support

### Q2 2025
- Native mobile apps (iOS/Android)
- Talkmaster integration
- PayMail full implementation
- Multi-signature wallets
- MyTokenWallet.com launch

### Q3 2025
- Rockwallet integration
- Centi payment processing
- Yours Wallet integration
- BSV Browser connector
- Token support (STAS/Run)

### Q4 2025
- The-Internet-of-Money.com hub launch
- Service directory
- Cross-service integration
- Developer portal
- NFT marketplace

### 2026+
- Lightning Network integration
- BSV-native atomic swaps
- DID authentication
- Zero-knowledge proofs
- Quantum-resistant crypto

---

## 🎁 Bounty System

Want to help? Earn **1000 satoshi** for:
- New bug reports
- Feature ideas
- Documentation improvements

📖 See [BOUNTY-SYSTEM.md](BOUNTY-SYSTEM.md) for details.

---

## 💬 Contributing

- 🐛 [Report Bug](https://github.com/Zwilla/MyIceColdWallet-Issues/issues/new?template=bug_report.md)
- 💡 [Suggest Feature](https://github.com/Zwilla/MyIceColdWallet-Issues/issues/new?template=feature_request.md)
- 💰 [View Ideas](IDEAS.md)
- 🇩🇪 [Deutsche Version](TODO-DE.md)

---

**Last Updated**: 2025-10-17
**Status**: 🟢 Active Development

*Building the future of BSV payments, one feature at a time.* 🚀
