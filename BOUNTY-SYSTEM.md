# 🎁 Bounty System - MyIceColdWallet

**Earn BSV Satoshi for contributing ideas and bug reports!**

---

## 💰 Reward Structure

### 1000 Satoshi Bounty
You can earn **1000 satoshi** (0.00001000 BSV) for:

✅ **New Feature Ideas**
- Your idea must not be listed in [IDEAS.md](IDEAS.md)
- Idea must be technically feasible
- Idea must align with project goals (security, usability, BSV ecosystem)

✅ **New Bug Reports**
- Bug must not have been reported before
- Bug must be reproducible
- Include Frame ID from the affected page
- Provide clear steps to reproduce

❌ **Ineligible Submissions**
- Duplicate ideas or bugs
- Ideas/bugs already in documentation
- Spam or low-effort submissions
- Offensive or inappropriate content

---

## 📝 How to Claim Your Bounty

### Step 1: Submit Your Contribution
1. Go to any page on https://myicecoldwallet.com
2. Scroll to bottom and find the **Frame ID footer**
3. Click **🐛 Report** button (opens GitHub issue form)
4. Or manually create issue: https://github.com/Zwilla/MyIceColdWallet-Issues/issues/new

### Step 2: Fill Out Issue Template
Include the following in your issue:

```markdown
**Frame ID**: `xxxxxxxx`
**Component**: [Component Name]
**Type**: [Bug Report / Feature Idea]

---

**Description**:
[Describe your bug or idea in detail]

---

**Reward Address** (for bounty payment):
- PayMail: `your@handcash.io` OR
- BSV Address: `1YourBSVAddressHere...`

---

**Steps to Reproduce** (for bugs):
1. Step 1
2. Step 2
3. Step 3

**Expected Behavior**:
[What should happen]

**Actual Behavior**:
[What actually happens]
```

### Step 3: Wait for Review
- Zwilla or maintainers will review your submission
- If approved, your issue will be labeled: `💰 bounty-approved`
- If duplicate/invalid, it will be closed with explanation

### Step 4: Receive Payment
- Approved bounties are collected in a batch
- Payments are sent via **bulk transaction** to reduce fees
- Payment frequency: **Weekly** (every Monday)
- You'll receive a notification comment on your issue with TXID

---

## 📊 Bounty Workflow

```
User submits issue
       ↓
Review by maintainer (24-48h)
       ↓
   Valid submission?
       ↓
    ✓ Yes → Label: 💰 bounty-approved
    ✗ No  → Close with reason
       ↓
Add to payment queue
       ↓
Weekly batch payment (Monday)
       ↓
TXID posted as comment
       ↓
Bounty complete! 🎉
```

---

## 💸 Payment Details

### Batch Payment Schedule
- **Day**: Every Monday at 12:00 UTC
- **Method**: Single consolidated BSV transaction with multiple outputs
- **Fee optimization**: Shared fee across all recipients

### Payment Formats Accepted
1. **PayMail** (preferred)
   - Example: `you@handcash.io`
   - Example: `user@relayx.io`
   - Example: `name@moneybutton.com`

2. **BSV Address**
   - MainNet: `1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa`
   - TestNet: Not supported for bounties (MainNet only)

3. **Public Key** (we derive address)
   - Compressed: `02a1633cafcc01ebfb6d78e39f687a1f0995c62fc95f51ead10a02ee0be551b5dc`

### Minimum Requirements
- You must have provided valid payment details
- PayMail must be registered and working
- BSV address must be valid MainNet address
- One bounty per unique contribution (no duplicates)

---

## 🏆 Bounty Leaderboard

Track top contributors:

### Top Contributors (All Time)
| Rank | Contributor | Bounties | Total Earned |
|------|------------|----------|--------------|
| 🥇 1 | - | - | - sats |
| 🥈 2 | - | - | - sats |
| 🥉 3 | - | - | - sats |

*Leaderboard updated weekly*

### Current Week Stats
- **Issues Reviewed**: 0
- **Bounties Approved**: 0
- **Total Payout**: 0 sats
- **Next Payment**: Monday, 12:00 UTC

---

## ⚖️ Terms & Conditions

### Eligibility
- Open to everyone worldwide
- No account creation required
- Must provide valid BSV payment method
- Must comply with GitHub Terms of Service

### Approval Criteria
Maintainers have final say on bounty approval. Decisions are based on:
- **Originality**: Is this truly new?
- **Quality**: Is it well-described and actionable?
- **Relevance**: Does it fit project scope?
- **Feasibility**: Can it realistically be implemented?

### Payment Guarantees
- Approved bounties are guaranteed payment
- Payment timing may vary based on batch schedule
- Minimum payment threshold: 1000 sats (single bounty)
- Unclaimed bounties (invalid address) are donated to development fund

### Privacy & Attribution
- All ideas are published under **Zwilla's name**
- Your GitHub username is visible on issues
- Payment addresses are NOT published publicly
- Leaderboard uses anonymous IDs (optional)

### Modifications
- Bounty amounts may change based on BSV price
- Payment schedule may be adjusted
- Terms may be updated with notice

---

## 🔐 Security & Privacy

### Your Privacy
- We DO NOT store payment addresses long-term
- Addresses used only for bounty payment
- No tracking or profiling
- All communication via GitHub

### Payment Security
- Payments sent from verified Zwilla wallet
- All TXIDs posted publicly for transparency
- Verify payments on blockchain explorer

### Scam Prevention
- Only submit via official channels
- Never send BSV to "claim" a bounty
- We will NEVER ask for private keys
- Report suspicious activity to: security@example.com

---

## 📞 Contact & Support

### Questions?
- Open a discussion: https://github.com/Zwilla/MyIceColdWallet-Issues/discussions
- Comment on existing issues
- Email: bounties@example.com (coming soon)

### Disputes
If you believe your submission was unfairly rejected:
1. Comment on your closed issue with additional context
2. Tag @Zwilla for re-review
3. Be respectful and provide evidence

---

## 📈 Statistics & Transparency

### All-Time Stats (Since Launch)
- **Total Bounties Paid**: 0
- **Total Satoshi Distributed**: 0 sats
- **Average Payout Time**: - days
- **Approval Rate**: -%
- **Unique Contributors**: 0

### Recent Payments
No payments yet. Be the first!

---

## 🚀 Future Enhancements

Planned improvements to bounty system:

- [ ] Automated bounty payments (smart contract)
- [ ] Tiered bounty amounts (500/1000/5000 sats)
- [ ] Referral bonuses
- [ ] Monthly top contributor bonus
- [ ] NFT badges for contributors
- [ ] Integration with HandCash/RelayX
- [ ] Real-time payment notifications

---

## 📜 Example Successful Submission

**Issue #42: Add Dark Mode Toggle**

```markdown
**Frame ID**: `a3f8e7c1`
**Component**: SettingsPage
**Type**: Feature Idea

---

**Description**:
Add a dark mode toggle in Settings that switches the entire
app between light and dark themes. This would help users who
prefer dark mode for better battery life and reduced eye strain.

**Suggested Implementation**:
- Toggle button in Settings → General
- Persist preference in localStorage
- CSS variables for theme colors
- Smooth transition animation

---

**Reward Address**:
PayMail: `contributor@handcash.io`

---

**Additional Notes**:
Similar feature exists in most modern apps. Would improve
user experience significantly.
```

**Result**:
✅ Approved
💰 1000 sats paid
📝 Implemented in version 1.1.0

---

**Last Updated**: 2025-10-17
**Bounty Program Status**: 🟢 Active
**Total Fund Available**: Unlimited (funded by development budget)

---

*Remember: All contributions help make MyIceColdWallet better for everyone. Thank you for being part of our community!* 🙏
