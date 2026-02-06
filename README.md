# SentinelHealth  
## Surgical Kit Logistics & HIPAA Compliance Modernization

---

## 📌 Project Overview

**SentinelHealth** is a business analysis and systems modernization case study addressing a critical **surgical kit logistics, cost, and HIPAA compliance challenge** for a medical device provider.

The **As-Is state** relied on:
- Manual communication between hospitals, warehouses, and couriers
- Reactive inventory replenishment
- Exposure of patient-identifiable information in shipping workflows

These gaps resulted in **excessive expedited shipping costs**, **operational delays**, and **HIPAA compliance risks**.

The **To-Be solution** introduces a **system-governed logistics and data model**, supported by SQL Server, Tableau analytics, and Agile delivery artifacts.

---

## 🎯 Objectives

- Reduce shipping costs caused by reactive replenishment
- Enforce HIPAA-compliant data handling across logistics workflows
- Improve visibility into surgical kit availability and readiness
- Establish a scalable, auditable logistics data model

---

## 🛠️ Tech Stack

**Data & Backend**
- Microsoft SQL Server (DDL, Views, Joins, Aggregations)

**Analytics & Visualization**
- Tableau Public (Geospatial Mapping, Cost & Urgency Analysis)

**Delivery & Documentation**
- Jira (Agile / Scrum)
- Confluence
- BRD, Definition of Ready (DoR), Definition of Done (DoD)
- UAT Scripts

---

## 🧩 My Role (Hybrid Business Analyst / Systems Analyst)

- Led end-to-end **requirements discovery and analysis**
- Designed **As-Is and To-Be process models**
- Defined the **relational data model and audit logic**
- Partnered with stakeholders to balance cost, compliance, and operational needs
- Supported Agile delivery through documentation, backlog refinement, and UAT

---

## 🚀 Key Features & Capabilities

### 🔄 Automated Replenishment Logic
- SQL views continuously monitor `Quantity_OnHand` vs `Reorder_Level`
- Proactive alerts enable **low-cost standard shipping** before stock-outs
- Reduces dependency on last-minute expedited shipments

---

### 🔐 HIPAA-Compliant De-Identification
- Removed patient names and direct identifiers from logistics workflows
- Introduced a **`Case_Ref_Number` protocol** for all courier and shipping communications
- Ensures compliance while maintaining traceability and auditability

---

### 🧰 Surgical Kit Readiness & Compliance
- Tracks `Last_ServiceDate` and maintenance status of surgical kits
- Ensures all tools are **sterilized, serviced, and compliant** prior to hospital delivery
- Reduces OR delays and clinical risk

---

### 🌍 Geospatial Command Center
- Tableau dashboard visualizes hospital locations geographically
- Color-coded **Stock Urgency Indicators** provide real-time operational oversight
- Enables warehouse teams to prioritize fulfillment efficiently

---

## 🗂️ Data Model & Architecture

The relational design centers on a **Shipments fact table**, linked to:
- Hospitals
- Surgical Kits

This structure provides:
- A clear audit trail
- Separation of operational data from sensitive patient information
- Scalable reporting and compliance enforcement

*(ERD diagrams included in the repository)*

---

## 📊 Business Impact

**💰 Cost Reduction**
- Reduced expedited shipping by **~80%** through proactive inventory alerts

**🛡️ Regulatory Safety**
- Eliminated HIPAA breach risks by removing PII from courier workflows

**⚙️ Operational Efficiency**
- Improved “Time-to-OR” by ensuring serviced kits are available locally
- Increased visibility for warehouse and operations teams

## 📁 Repository Structure

/discovery-and-analysis
└── BPMN process maps
└── ERD diagrams

/requirements-documentation
└── BRD
└── DoR / DoD


/technical-specifications
└── SQL DDL scripts
└── Reporting & audit views

/testing-and-uat
└── UAT scripts
└── Tableau 
└── Dashboard screenshots

---


---

## 📌 Key Takeaway

This project demonstrates how **strong business analysis, systems thinking, and data governance** can:
- Reduce operational costs
- Enforce regulatory compliance
- Improve healthcare delivery readiness

It reflects a **real-world, enterprise-grade approach** to logistics modernization in a regulated environment.

---


