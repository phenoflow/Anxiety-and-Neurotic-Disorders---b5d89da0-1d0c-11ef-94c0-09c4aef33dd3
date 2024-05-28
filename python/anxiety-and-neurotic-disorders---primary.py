# Kathryn M Abel, Holly Hope, Eleanor Swift, Rosa Parisi, Darren M Ashcroft, Kyriaki Kosidov, Semre Su Osam, Christian Dolman, Mathias Pierce, 2024.

import sys, csv, re

codes = [{"code":"E200200","system":"readv2"},{"code":"E200400","system":"readv2"},{"code":"Z4I7211","system":"readv2"},{"code":"Eu45211","system":"readv2"},{"code":"8HHp.00","system":"readv2"},{"code":"Eu41100","system":"readv2"},{"code":"E202D00","system":"readv2"},{"code":"Eu44300","system":"readv2"},{"code":"E202z11","system":"readv2"},{"code":"E200500","system":"readv2"},{"code":"8G94.00","system":"readv2"},{"code":"Z4I7.00","system":"readv2"},{"code":"E20z.00","system":"readv2"},{"code":"E28z.13","system":"readv2"},{"code":"Z4I7200","system":"readv2"},{"code":"E202900","system":"readv2"},{"code":"Z4I7100","system":"readv2"},{"code":"Eu43015","system":"readv2"},{"code":"Eu46100","system":"readv2"},{"code":"Eu41z11","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('anxiety-and-neurotic-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["anxiety-and-neurotic-disorders---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["anxiety-and-neurotic-disorders---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["anxiety-and-neurotic-disorders---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
