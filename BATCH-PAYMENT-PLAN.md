# 💸 Batch Payment System - Implementation Plan

**Status**: 📋 Planning Phase (Not Yet Implemented)

This document outlines the planned batch payment system for distributing bounty rewards.

---

## 🎯 Goals

1. **Cost Efficiency**: Reduce transaction fees by batching multiple payments
2. **Automation**: Minimize manual work in payment processing
3. **Transparency**: Provide clear payment proof for all recipients
4. **Scalability**: Handle growing number of contributors

---

## 📊 Current Workflow (Manual)

### Weekly Payment Process
1. **Collection Phase** (Monday - Sunday)
   - Issues are submitted throughout the week
   - Maintainers review and approve with label: `💰 bounty-approved`
   - Payment addresses are collected from approved issues

2. **Review Phase** (Monday morning)
   - List all approved bounties from past week
   - Verify payment addresses (PayMail → BSV address resolution)
   - Remove duplicates (one user, multiple bounties = single combined payment)
   - Calculate total payout amount

3. **Payment Phase** (Monday 12:00 UTC)
   - Create single BSV transaction with multiple outputs
   - Each output: 1000 sats (or multiple of 1000 for multi-bounty contributors)
   - Sign and broadcast transaction
   - Extract TXID from blockchain response

4. **Notification Phase** (Monday afternoon)
   - Post TXID as comment on each paid issue
   - Update leaderboard in BOUNTY-SYSTEM.md
   - Close paid issues or keep open if work continues

---

## 🛠️ Technical Implementation (Future)

### Phase 1: Manual Batch Script (MVP)
**Timeline**: Q1 2025

**Components**:
1. **Issue Scraper** (Node.js)
   ```javascript
   // Fetch all issues with label "bounty-approved" and "unpaid"
   // Extract: issue_number, reward_address, amount
   ```

2. **Address Validator**
   ```javascript
   // Validate BSV addresses
   // Resolve PayMail addresses to BSV addresses
   // Check address format (MainNet only)
   ```

3. **Transaction Builder**
   ```javascript
   // Create transaction with multiple outputs
   // Input: Zwilla's bounty wallet
   // Outputs: Array of {address, satoshis} objects
   // Fee calculation: minimize by optimizing inputs
   ```

4. **Payment Executor**
   ```javascript
   // Sign transaction with bounty wallet key
   // Broadcast to BSV network
   // Wait for confirmation
   // Return TXID
   ```

5. **Notification Bot**
   ```javascript
   // For each paid issue:
   //   - Post comment with TXID and explorer link
   //   - Add label "bounty-paid"
   //   - Remove label "bounty-approved"
   ```

### Phase 2: Semi-Automated System
**Timeline**: Q2 2025

**Improvements**:
- GitHub Actions workflow (scheduled cron job)
- Automatic address validation
- Email/webhook notifications to recipients
- Payment queue dashboard
- Error handling & retry logic

### Phase 3: Full Automation with Smart Contracts
**Timeline**: Q3-Q4 2025

**Advanced Features**:
- On-chain smart contract for bounty distribution
- Automated approval based on community votes
- Tiered bounty amounts (configurable)
- Instant payment upon approval (no weekly batching)
- Built-in dispute resolution

---

## 💰 Payment Transaction Structure

### Example Batch Transaction

```javascript
{
  "version": 1,
  "inputs": [
    {
      "txid": "abc123...",  // Zwilla's bounty fund UTXO
      "vout": 0,
      "satoshis": 50000,    // 0.0005 BSV
      "scriptPubKey": "...",
      "address": "1ZwillaBountyFundAddress..."
    }
  ],
  "outputs": [
    {
      "address": "1ContributorAddress1...",
      "satoshis": 1000      // Bounty #1
    },
    {
      "address": "1ContributorAddress2...",
      "satoshis": 1000      // Bounty #2
    },
    {
      "address": "1ContributorAddress3...",
      "satoshis": 2000      // Bounty #3 + #4 (same user)
    },
    {
      "address": "1ZwillaBountyFundAddress...",
      "satoshis": 45800     // Change output (minus fee)
    }
  ],
  "lockTime": 0
}
```

### Fee Calculation
- **Typical Size**: ~250 bytes (3 outputs) to ~1000 bytes (20 outputs)
- **Fee Rate**: 500 sats/KB (normal priority)
- **Example Fee**: 500 bytes × 0.5 sats/byte = 250 sats
- **Cost per Recipient**: 250 sats / 3 = ~83 sats per bounty
- **vs. Individual TXs**: 250 sats × 3 = 750 sats total
- **Savings**: ~67% fee reduction

---

## 📋 Payment Record Keeping

### Issue Comment Template
```markdown
## 💸 Bounty Payment Confirmed

Your bounty of **1000 satoshi** has been paid!

**Transaction Details**:
- TXID: `abc123def456...`
- Output: #2
- Amount: 1000 sats
- Network: BSV MainNet
- Block: 850123 (3 confirmations)

**Verify Payment**:
- WhatsOnChain: https://whatsonchain.com/tx/abc123def456...
- Your Address: `1YourBSVAddress...`

Thank you for contributing to MyIceColdWallet! 🎉

---
*Payment processed on 2025-10-21 12:05 UTC*
*Batch TX: 5 bounties paid in single transaction*
```

### Database/Spreadsheet (Internal)
```csv
Date,Issue#,Contributor,GitHub_User,Address,Amount,TXID,Output#,Status
2025-10-21,#5,Anonymous,user123,1ABC...,1000,abc123...,0,Paid
2025-10-21,#7,Anonymous,user456,1DEF...,1000,abc123...,1,Paid
2025-10-21,#9,Anonymous,user789,1GHI...,2000,abc123...,2,Paid
```

---

## 🔐 Security Considerations

### Wallet Security
- Bounty fund wallet stored in **hardware wallet** (Ledger/Trezor)
- Multi-signature option for large batches (2-of-3)
- Regular audits of wallet balance
- Separate from main project funds

### Address Validation
- Whitelist known PayMail providers (HandCash, RelayX, MoneyButton)
- Blacklist known scam addresses
- Verify address ownership (optional: send 1 sat test TX)
- Rate limiting (max 1 bounty per user per week)

### Fraud Prevention
- GitHub account age check (min. 30 days old)
- Contribution quality review
- Duplicate detection (same idea, different wording)
- IP address monitoring (VPN/Tor flagged for review)

---

## 📊 Budget & Sustainability

### Initial Fund
- **Amount**: 100,000 satoshi (0.001 BSV)
- **Bounties**: ~100 bounties at 1000 sats each
- **Refill**: Manual top-up when < 10,000 sats remaining

### Long-term Funding
- Project development budget allocation
- Community donations (optional)
- Sponsorships (if applicable)
- Tiered bounty amounts based on fund balance

### Monthly Budget Estimate
```
Assumptions:
- Average 10 bounties per week
- 40 bounties per month
- 1000 sats per bounty
- ~200 sats average fee per batch (4 batches/month)

Total: (40 × 1000) + (4 × 200) = 40,800 sats/month (~$0.32 USD at $80/BSV)
```

---

## 🧪 Testing Plan

### Phase 1: TestNet Testing
1. Create test bounty fund wallet (TestNet)
2. Generate 5 test issues with different scenarios
3. Run batch payment script on TestNet
4. Verify all outputs correct
5. Test notification bot

### Phase 2: MainNet Pilot
1. Start with small batch (3-5 bounties max)
2. Manual review each transaction
3. Monitor for 24h after payment
4. Collect feedback from recipients
5. Iterate based on learnings

### Phase 3: Full Production
1. Increase batch size gradually
2. Automate with monitoring
3. Set up alerting for errors
4. Weekly reconciliation reports

---

## 📅 Implementation Timeline

### Q1 2025
- ✅ Bounty system documentation (completed)
- ✅ Issue templates with reward fields (completed)
- ✅ GitHub repository setup (completed)
- 🚧 First manual batch payment (pending first submissions)
- 🚧 Payment record spreadsheet setup

### Q2 2025
- Batch payment script (MVP)
- Address validation service
- Notification bot
- Payment dashboard

### Q3 2025
- GitHub Actions automation
- PayMail resolution integration
- Enhanced fraud detection
- Community leaderboard

### Q4 2025
- Smart contract research
- Tiered bounty system
- Instant payment option
- Multi-currency support (if requested)

---

## 🤝 Community Involvement

### Payment Transparency
- All TXIDs published publicly
- Monthly payment reports in BOUNTY-SYSTEM.md
- Open-source payment scripts (when ready)
- Community can verify all payments on blockchain

### Governance (Future)
- Community voting on bounty amounts
- Contributor reputation system
- Bonus pools for top contributors
- Annual contributor recognition

---

## 📚 References & Resources

### BSV Development
- BSV SDK Documentation: https://docs.bsvblockchain.org
- Transaction Building: https://wiki.bitcoinsv.io/index.php/Bitcoin_Transactions
- PayMail Protocol: https://bsvalias.org

### Payment Scripts (Templates)
```bash
# Example: Query approved bounties
gh issue list --label "bounty-approved" --state open --json number,title,body

# Example: Create batch transaction (pseudo-code)
bsv-cli createrawtransaction '[{"txid":"...","vout":0}]' \
  '{"1addr1...":0.00001,"1addr2...":0.00001,"1change...":0.00048}'
```

---

## ❓ FAQ

**Q: What if I provided wrong address?**
A: Contact us ASAP before Monday payment. We can update if not yet processed.

**Q: Can I donate my bounty?**
A: Yes! Specify in issue comment. We'll add it to dev fund.

**Q: How do I verify payment?**
A: Check TXID on https://whatsonchain.com or any BSV explorer.

**Q: What if payment fails?**
A: We'll retry next week and post update on your issue.

---

**Document Version**: 1.0
**Last Updated**: 2025-10-17
**Status**: Planning Phase
**Next Review**: After first 10 bounties paid

---

*This document will be updated as the system evolves based on real-world usage and community feedback.*
