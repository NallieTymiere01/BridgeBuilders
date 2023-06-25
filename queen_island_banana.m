%Community-Based Organization Program
1 % This program creates a community-based organization that connects people, resources, and ideas to 
2 % build a stronger and more vibrant community.
3 %
4 % Author: 
5 %
6 % Date: 
7 %
8 % Description:
9 %
10 
11 % Clear Command Window and Workspace
12 clc;
13 clear;
14 
15 % Create a struct to store data
16 communityData = struct();
17 
18 % Ask user to input information about the community
19 fprintf('Please enter the following information about the community: \n\n');
20 
21 % Ask user to enter community's name
22 communityName = input('Enter community''s name: ');
23 
24 % Ask user to enter population of community
25 population = input('Enter community''s population: ');
26 
27 % Ask user to enter resources available in community
28 resources = input('Enter any resources available in community: ');
29 
30 % Ask user to enter unique ideas about the community
31 ideas = input('Enter any unique ideas for the community: ');
32 
33 % Store data into the struct
34 communityData.CommunityName = communityName;
35 communityData.Population = population;
36 communityData.Resources = resources;
37 communityData.Ideas = ideas;
38 
39 % Create a table to store the data
40 communityTable = struct2table(communityData);
41 
42 % Print table to command window
43 fprintf('\n\nCommunity Information Table \n\n');
44 disp(communityTable);
45 
46 % Save data to file
47 save('CommunityInformation.mat', 'communityData');
48 
49 % Create a figure to graphically display the data
50 figure;
51 
52 % Set figure size
53 set(gcf, 'Position', [200, 200, 800, 600]);
54 
55 % Create a bar graph
56 bar(communityTable);
57 
58 % Set bar graph attributes
59 title('Community Information Graph');
60 xlabel('Information');
61 ylabel('Value');
62 
63 % Save figure as image
64 saveas(gcf, 'CommunityInformationGraph.png');
65 
66 % Create a figure to display the community logo
67 figure;
68 
69 % Ask user to input logo file name
70 logoFile = input('Enter the logo file name to be used: ');
71 
72 % Read the logo from the specified file
73 logoImage = imread(logoFile);
74 
75 % Set figure size
76 set(gcf, 'Position', [200, 200, 800, 600]);
77 
78 % Display logo on figure
79 imshow(logoImage);
80 
81 % Add the community's name to logo
82 text(10, 20, communityName, 'FontSize', 20);
83 
84 % Save figure as image
85 saveas(gcf, 'CommunityLogo.png');
86 
87 % Create a figure to display community slogan
88 figure;
89 
90 % Ask user to enter slogan
91 slogan = input('Enter a slogan for the community: ');
92 
93 % Set figure size
94 set(gcf, 'Position', [200, 200, 800, 600]);
95 
96 % Display the slogan
97 text(20, 50, slogan, 'FontSize', 20);
98 
99 % Save figure as image
100 saveas(gcf, 'CommunitySlogan.png');
101 
102 % Create a figure to display population graph
103 figure;
104 
105 % Set figure size
106 set(gcf, 'Position', [200, 200, 800, 600]);
107 
108 % Create population pie graph
109 pie(population);
110 
111 % Add title to the figure
112 title('Population Graph');
113 
114 % Save figure as image
115 saveas(gcf, 'PopulationGraph.png');
116 
117 % Create a figure to display resources graph
118 figure;
119 
120 % Set figure size
121 set(gcf, 'Position', [200, 200, 800, 600]);
122 
123 % Create resources boxplot
124 boxplot(resources);
125 
126 % Add title to the figure
127 title('Resources Graph');
128 
129 % Save figure as image
130 saveas(gcf, 'ResourcesGraph.png');
131 
132 % Create a figure to display ideas graph
133 figure;
134 
135 % Set figure size
136 set(gcf, 'Position', [200, 200, 800, 600]);
137 
138 % Create ideas scatterplot
139 scatter(ideas);
140 
141 % Add title to the figure
142 title('Ideas Graph');
143 
144 % Save figure as image
145 saveas(gcf, 'IdeasGraph.png');
146 
147 % Display end of program message
148 fprintf('\n\nProgram complete. Check working directory to find created images and data.\n');