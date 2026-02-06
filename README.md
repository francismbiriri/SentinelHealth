# SentinelHealth: Surgical Kit Logistics & HIPAA Compliance Modernization

##📌 Project Overview

This project addresses a critical supply chain and data privacy crisis for SentinelHealth, a medical device provider. The "As-Is" state relied on manual communication and reactive inventory management, leading to high shipping overheads and HIPAA violations. This "To-Be" solution implements a system-governed logistics model using SQL Server, Tableau, and Agile documentation.

##🛠️ Tech Stack

Database: Microsoft SQL Server (DDL, Views, Joins)

Visualization: Tableau Public (Geospatial Mapping & Cost Analysis)

Project Management: Jira (Agile/Scrum), Confluence

Documentation: BRD, DoR/DoD, UAT Scripts

##🚀 Key Features

Automated Replenishment Logic: SQL views monitor Quantity_OnHand against Reorder_Level to trigger low-cost shipping before stock-outs occur.


HIPAA De-identification: Replaced PII (Patient Names) with a Case_ref_number protocol for all external shipping and courier communications.


Predictive Maintenance: Tracks Last_ServiceDate to ensure all surgical tools are compliant and sterilized before hospital delivery.


Geospatial Command Center: A Tableau dashboard that maps hospital locations and color-codes "Stock Urgency" for real-time warehouse oversight.

##📊 Database Schema (ERD)

The relational model centers on a Shipments fact table connecting Hospitals and Kits, ensuring a clear audit trail.

##📈 Business Impact

Cost Reduction: Minimized "Expedited" shipping by 80% through proactive inventory alerts.

Regulatory Safety: Eliminated HIPAA breach risks by removing sensitive data from the courier workflow.

Operational Efficiency: Reduced "Time-to-OR" by ensuring kits are serviced and available locally.

##📁 Repository Contents

**/Discovery and Analysis:** BPMN Process Maps and ERD Diagrams.

**/Requirements Documentaion:** DoR, DoD, BRD all done using Confluence.

**/Technical Specifications:** Table creation (DDL) and Audit Views.

**/Testing and UAT:** Tableau Workbook (packaged) and Dashboard Screenshots.
