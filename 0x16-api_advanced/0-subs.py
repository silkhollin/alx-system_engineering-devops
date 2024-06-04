#!/usr/bin/python3
"""
This function queries the reddit api to
find all the subscribers of a subreddit
"""

import requests
# https://www.reddit.com/


def number_of_subscribers(subreddit):
    headers = {"User-Agent": "Koco"}
    url = f'https://www.reddit.com/r/{subreddit}/about.json'
    subreddit_info = requests.get(url, headers=headers, allow_redirects=False)
    if subreddit_info.status_code == 200:
        data = subreddit_info.json()
        result_data = data["data"]
        return (result_data["subscribers"])
    return (0)
