# Deployment Guide

This document outlines the process for deploying HavaChain Starknet contracts.

## Prerequisites

- Starknet CLI installed  
- Cairo toolchain configured  
- Starknet account  

## Steps

### 1. Compile Contracts

```bash
starknet-compile contracts/havachain_bridge.cairo \
  --output build/havachain_bridge.json
