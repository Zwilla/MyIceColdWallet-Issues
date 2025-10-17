# =Ë TODO - Roadmap & Geplante Features

<é<ê **Deutsche Version** | [<ì<ç English Version](TODO.md)

---

## < Ökosystem-Übersicht

**The-Internet-of-Money.com** - Haupt-Hub für BSV-Ökosystem-Services

### Kern-Anwendungen

1. **[MyIceColdWallet.com](https://MyIceColdWallet.com)**
   -  Air-gapped Offline-Transaktionssignierung
   -  QR-Code-basierter Signing-Workflow
   -  Hardware-Sicherheit (Secure Enclave/TEE)
   -  Passkey-Authentifizierung (online)
   -  PIN-Schutz mit Auto-Wipe (offline)
   - =§ Native Mobile Apps (iOS/Android)

2. **[MyTokenWallet.com](https://MyTokenWallet.com)**
   - =§ Client-seitige Wallet-Anwendung
   - =§ Transaktionserstellung & Broadcasting
   - =§ Signierung via verbundene Wallet ODER MyIceColdWallet.com
   - =§ Token-Management (STAS, Run, etc.)
   - =§ Multi-Signatur-Unterstützung

---

## = Service-Integrationen

### Kommunikations-Services
- =§ **Talkmaster** - BSV-basiertes Messaging
  - Ende-zu-Ende verschlüsselte Nachrichten
  - PayMail-Integration
  - Datei-Sharing mit Blockchain-Proof

### Wallet-Anbieter
- =§ **Rockwallet** - Multi-Währungs-Wallet
- =§ **Centi** - Schweizer BSV-Zahlungslösung
- =§ **Yours Wallet** - Social-Wallet-Plattform
- =§ **BSV Desktop** - Native Desktop-Verbindung
- =§ **HandCash** - Social-Money-App
- L ~~Money Button~~ (eingestellt)
- L ~~Relay.x~~ (eingestellt)

### Browser & Tools
- =§ **BSV Browser** - Blockchain-nativer Browser
- =§ **Rockwallet Browser-Erweiterung**
- =§ **MetaNet Client** - Dezentraler Web-Browser

---

## =Ý Dokumenten-Management

### Dokumenten-Signierung
- =§ **PDF-Dokumenten-Signierung** mit Blockchain-Proof
- =§ **Mehrparteien-Dokumenten-Signierung** (Verträge)
- =§ **Timestamp-Service** (Notarisierung)
- =§ **Dokumenten-Echtheit verifizieren**
- =§ **Dokumenten-Hash-Speicherung** On-Chain

### Anwendungsfälle
- Rechtsverträge
- Arbeitsverträge
- NDAs (Vertraulichkeitsvereinbarungen)
- Grundstücksurkunden
- Akademische Zertifikate
- Medizinische Aufzeichnungen

---

## = Sicherheits-Features

### Aktuell ()
- Air-gapped Signing via QR-Codes
- Passkey-Authentifizierung (FIDO2)
- PIN-Schutz mit Auto-Wipe
- Anti-DevTools-Schutz
- Hardware-Sicherheit (Secure Enclave)
- Session-Timeout (15 Min)
- Frame-ID-System

### Geplant (=§)
- Multi-Signatur-Wallets (2-of-3, 3-of-5)
- Hardware-Wallet-Integration (Ledger, Trezor)
- Zeit-gesperrte Transaktionen
- Notfall-Wiederherstellungs-Mechanismus
- Duress-PIN (Köder-Wallet)
- Geofencing
- Biometrische Re-Authentifizierung

---

## =¸ Transaktions-Features

### Aktuell ()
- Basis-Transaktionserstellung
- Anpassbare Gebührensätze
- Multi-Empfänger-Transaktionen
- QR-Code-Generierung (husky.txreq@1)
- Signierte-Transaktion-Scanner (husky.txres@1)
- BEEF-Format-Unterstützung

### Geplant (=§)
- Replace-by-Fee (RBF)
- Child-Pays-for-Parent (CPCP)
- Transaktions-Vorlagen
- Geplante Transaktionen
- Batch-Zahlungen (CSV-Import)
- Intelligente Gebührenschätzung
- OP_RETURN-Daten-Kodierung
- Atomic Swaps

---

## < PayMail-Protokoll

### Aktuell ()
- Basis-PayMail-Adressen-Unterstützung
- PayMail im Bounty-System

### Geplant (=§)
- Vollständige PayMail-Implementierung (BIP270)
- PayMail-Weiterleitungs-Service
- PayMail-Verzeichnis
- P2P-PayMail-Messaging
- PayMail-Zahlungsanfragen
- PayMail-Rechnungsstellung

---

## <¨ Benutzeroberfläche

### Aktuell ()
- Responsives Mobile-Design
- Frame-ID-Footer
- Modale Dialoge
- Toast-Benachrichtigungen
- Lade-Zustände

### Geplant (=§)
- **Mehrsprachige Unterstützung (i18n)**:
  - <ì<ç Englisch
  - <é<ê Deutsch
  - <ê<ø Spanisch
  - <ë<÷ Französisch
  - <è<ó Chinesisch
  - <ï<õ Japanisch
  - <õ<ù Portugiesisch
  - <î<ù Italienisch
  - <÷<ú Russisch
- Theme-Anpassung
- Dark Mode
- Barrierefreiheit (WCAG 2.1 AA)
- Tastatur-Shortcuts
- Sprachbefehle

---

## =ñ Mobile Anwendungen

### iOS App (=§)
- React Native Implementierung
- Face ID / Touch ID
- NFC-Zahlungs-Unterstützung
- Hintergrund-Synchronisierung
- Push-Benachrichtigungen
- Widget-Unterstützung

### Android App (=§)
- React Native Implementierung
- Biometrische Authentifizierung
- NFC-Zahlungs-Unterstützung
- Hintergrund-Synchronisierung
- Push-Benachrichtigungen
- Widget-Unterstützung

---

## = Blockchain-Integrationen

### BSV-Services (=§)
- **Talkmaster** - Messaging
- **Rockwallet** - Zahlungen
- **Centi** - Zahlungsabwickler
- **Yours Wallet** - Social Wallet
- **BSV Browser** - Web3-Browser
- **BSV Desktop** - Native Bridge
- **HandCash Connect** - API
- **PayMail Protocol** - Adressierung

### Blockchain-APIs (=§)
- WhatsOnChain ( aktuell)
- Taal Console API
- GorillaPool API
- Eigene BSV-Node-Verbindung
- Multi-Provider-Failover

---

## =à Entwickler-Features

### Aktuell ()
- Debug-Modus
- Frame-ID-System
- Console-Logging
- GitHub-Issue-Integration

### Geplant (=§)
- API-Dokumentation (Swagger/OpenAPI)
- SDK für Drittanbieter-Apps
- Webhook-Unterstützung
- GraphQL API
- Testing-Framework
- CI/CD-Pipeline
- Performance-Monitoring (Sentry)

---

## =Ê Analytics & Reporting

### Geplant (=§)
- Transaktionsverlauf mit Charts
- Portfolio-Wert-Tracking (USD/EUR)
- Steuerreporting-Export (CSV/PDF)
- Ausgaben-Analytik
- Adressen-Nutzungs-Statistiken
- Gebühren-Optimierungs-Vorschläge
- Preis-Alarme
- Mehrwährungs-Umrechnung

---

## <¯ Token-Standards

### Geplant (=§)
- **STAS Tokens** - Simplified Token Protocol
- **Run Protocol** - Smart Contracts auf BSV
- **NFT-Unterstützung** - Non-fungible Tokens
- **Token-Erstellung** - Eigenen Token launchen
- **Token-Trading** - Dezentrale Börse
- **Token-Governance** - DAO-Features

---

## < The-Internet-of-Money.com Hub

### Geplante Features (=§)
- **Service-Verzeichnis** - Alle BSV-Services aufgelistet
- **Einheitliches Login** - Single Sign-On über Services hinweg
- **Cross-Service-Zahlungen** - Nahtlose Integration
- **Service-Discovery** - BSV-Apps finden
- **Entwickler-Portal** - Auf BSV aufbauen
- **Dokumentations-Hub** - Guides & Tutorials
- **Status-Dashboard** - Service-Health-Monitoring

---

## =Å Zeitplan

### Q1 2025 (Aktuell)
-  Frame-ID-System
-  Bounty-System
-  Issue-Templates
- =§ Dokumenten-Signierung
- =§ Mehrsprachige Unterstützung

### Q2 2025
- Native Mobile Apps (iOS/Android)
- Talkmaster-Integration
- PayMail vollständige Implementierung
- Multi-Signatur-Wallets
- MyTokenWallet.com Launch

### Q3 2025
- Rockwallet-Integration
- Centi-Zahlungsabwicklung
- Yours-Wallet-Integration
- BSV-Browser-Connector
- Token-Unterstützung (STAS/Run)

### Q4 2025
- The-Internet-of-Money.com Hub Launch
- Service-Verzeichnis
- Cross-Service-Integration
- Entwickler-Portal
- NFT-Marktplatz

### 2026+
- Lightning-Network-Integration
- Cross-Chain Atomic Swaps
- DID-Authentifizierung
- Zero-Knowledge-Proofs
- Quantenresistente Kryptographie

---

## < Bounty-System

Willst du helfen? Verdiene **1000 Satoshi** für:
- Neue Bug-Reports
- Feature-Ideen
- Dokumentations-Verbesserungen

=Ö Siehe [BOUNTY-SYSTEM.md](BOUNTY-SYSTEM.md) für Details (Englisch).

---

## =¬ Mitwirken

- = [Bug Melden](https://github.com/Zwilla/MyIceColdWallet-Issues/issues/new?template=bug_report.md)
- =¡ [Feature Vorschlagen](https://github.com/Zwilla/MyIceColdWallet-Issues/issues/new?template=feature_request.md)
- =° [Ideen Ansehen](IDEAS.md) (Englisch)
- <ì<ç [English Version](TODO.md)

---

**Zuletzt Aktualisiert**: 2025-10-17
**Status**: =â Aktive Entwicklung

*Wir bauen die Zukunft der BSV-Zahlungen, ein Feature nach dem anderen.* =€
