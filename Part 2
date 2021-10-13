import requests
class API_response:
    def __init__(self, file1, file2):
        self.f1 = open(file1, "r")
        self.f2 = open(file2, "r")
    
    def compare(self):
        # loop through the whole file
        while self.f1:
            #read the line of the file and remove the \n for the string
            line1 = self.f1.readline()
            line2 = self.f2.readline()
            line1 = line1.rstrip('\n')
            line2 = line2.rstrip('\n')
            
            #if both files end then break the loop
            if line1 == "" and line2 == "":
                break
            
            #try the link that should be in the string
            try:
                #get the json response for the API
                link1 = requests.get(line1)
                dict1 = link1.json()
                
                link2 = requests.get(line2)
                dict2 = link2.json()    
                
                # compare the json responses
                if self.ordered(dict1) == self.ordered(dict2):
                    print(line1, "equals", line2)
                else:
                    print(line1, "not equals", line2)
            #ignore if the link fails
            except:
                pass
    
    # sort the json responses
    def ordered(self, obj):
        if isinstance(obj, dict):
            return sorted((k, self.ordered(v)) for k, v in obj.items())
        if isinstance(obj, list):
            return sorted(self.ordered(x) for x in obj)
        else:
            return obj

if __name__ == '__main__':
    response = API_response("file 1.txt", "file 2.txt")
    response.compare()
