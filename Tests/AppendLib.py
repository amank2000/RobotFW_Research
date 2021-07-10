import csv

class AppendLib():

    def clear_file(self, filepath):                    #  Clear_file :it will clear your file.
        with open(filepath, 'w+') as f:
            obj1=csv.writer(f)

    def append_file(self, filepath, data):             #  Append_file :it will append the data you wanted to in your script.
        with open(filepath, 'a') as f:
            obj1=csv.writer(f)
            obj1.writerow(data)