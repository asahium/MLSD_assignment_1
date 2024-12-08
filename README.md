# Retail Visitor Analytics

## Overview

This project provides a scalable solution for analyzing unique customer visits across retail locations using cloud-based infrastructure and edge computing.

## Features

- **Edge Processing:** Real-time feature extraction from video feeds.
- **Cloud Pipeline:** Scalable data ingestion and processing.
- **Visitor Matching:** Identify unique visitors and repeat visits.
- **Visualization:** Interactive dashboard for analytics.

## Project Description

Retail Visitor Analytics is a system designed to analyze customer visits across retail locations using face recognition technology. Below is a detailed description of the key components and their functionalities:

1. Input Data (Cameras)
    * Description: Cameras capture snapshots of customers every 10–30 seconds. This approach minimizes bandwidth usage and optimizes data processing.
    * Purpose: Acts as the primary data source for the system, providing images for further processing.

1. Processor
    * This is the core component responsible for processing images. It includes two main modules:
    1. Face Detector:
        * Input: Snapshots from the cameras.
        * Output: Cropped images of detected faces.
        * Description: Identifies faces in images and extracts them for further analysis.
    2. Face Recognition:
        * Input: Cropped face images.
        * Output: Unique customer IDs for each recognized face.
        * Description: Analyzes facial features, generates embeddings (digital metrics), and matches them against a database to identify customers.
    3. Task Queue:
        * A task queue is used to ensure sequential processing of images and enables scalability.

1. Data Storage
    * Purpose: Stores processed data, including unique customer IDs, timestamps, and store IDs.
    * Example Record:

{
    "customer_id": "123",
    "timestamp": "2024-11-26T10:05:00",
    "store_id": "store_001"
}

4. Data Aggregator
    * Description: Combines customer data from multiple stores into a unified format.
    * Input: Records from individual store databases.
    * Output: Aggregated information showing total appearances and store-wise visits for each customer.
    * Example Output:

{
    "123": {
        "total_appearances": 3,
        "stores": {
            "store_001": 2,
            "store_002": 1
        }
    }
}

5. Visualization (Dashboard)
    * Description: A user-friendly web interface for analyzing customer visit data.
    * Main Features:
        * Displays the total number of visits per customer.
        * Breaks down visits by store locations.
        * Allows filtering by time range and specific stores.

