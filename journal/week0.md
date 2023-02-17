# Week 0 — Billing and Architecture

## AWS Organizations

I was searching for a way on AWS so that I can isolate my services and resources getting used for my personal projects with the services I wanted to use for this bootcamp, and then came to rescue a tutorial by [Cloud Security Podcast](https://youtu.be/4EMWBYVggQI) on setting up AWS Organization.

AWS organization helps up setup multiple accounts under your root account. Your root account only works for management purposes like for paying bills and managing diff accounts and polices for your organization. This helps you to setup different isolated accounts for different users and projects. 

So basically, I created my personal organization under which I craeted two accounts, one specifically for this AWS cloud project bootcamp and second one for testing out AWS services and features.

![AWS organizations](assets/account.png)

## Created user groups and users

Created user group named Admin, and under that craeted two different IAM users, one as the main user to setups services for bootcamp, and second as a testing user just to test out resources and services.

Created access tokens for both the users so that they can access AWS using CLI on local environment.

## Install and verify AWS cli setup

Steps to setup AWS CLI on local environment:
1) Create access token for the IAM user to access the account using CLI. For that go to IAM users > 
2) 

## Gitpod setup

## Setup budget using CLI

## Setup billing alarm using CLI

## Recreate Logical Architectural Design

https://lucid.app/lucidchart/0d328f96-8057-46c2-979b-ebf94b0430b9/edit?viewport_loc=273%2C336%2C1765%2C838%2C0_0&invitationId=inv_5b6eaf40-3a4a-4522-b8e4-df4cc749aee2
