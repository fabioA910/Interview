import os
import unittest
from Interviewtask2 import API_response

class Testing(unittest.TestCase):

    def test_0_init(self):
        global response
        self.assertTrue(os.path.isfile("file 1.txt"))
        self.assertTrue(os.path.isfile("file 1.txt"))
        response = API_response("file 1.txt", "file 2.txt")

    def test_1_compare(self):
        self.assertTrue(response.compare())
