% Figure 1

% Create a world map coordinate area
ax = worldmap('World');
setm(ax, 'Origin', [0 0 0])

% Import shoreline data
load coastlines

% Shoreline mapping
plotm(coastlat, coastlon)

% Land mapping
land = shaperead('landareas.shp', 'UseGeoCoords', true);
geoshow(ax, land, 'FaceColor', [0.5 0.7 0.5])

% Lake mapping
lakes = shaperead('worldlakes.shp', 'UseGeoCoords', true);
geoshow(lakes, 'FaceColor', 'blue')

% Map the river
rivers = shaperead('worldrivers.shp', 'UseGeoCoords', true);
geoshow(rivers, 'Color', 'blue')

%import Geoid height number 
load geoid60c.mat

% Set color and interpolate thinning
C = [222,238,209; 126,190,174; 230,244,241;
     174,210,226; 92,169,187; 36,129,196]./255;
C1(:, 1) = interp1(0:5, C(:, 1), 0:0.5:5, 'linear')';
C1(:, 2) = interp1(0:5, C(:, 2), 0:0.5:5, 'linear')';
C1(:, 3) = interp1(0:5, C(:, 3), 0:0.5:5, 'linear')';

% Mapping the geoid
geoshow(ax, geoid60c - 100, geoid60cR, 'DisplayType', 'surface')
colormap(C1) % 应用颜色

% Land mapping
land = shaperead('landareas.shp', 'UseGeoCoords', true);
geoshow(ax, land, 'FaceColor', [0.5 0.7 0.5])


% data
maine_data = [44.733, -67.000;44.383, -68.317];

new_hampshire_data = [ 43.117, -70.767];

massachusetts_data = [ 42.350, -71.050;42.050, -70.200];

rhode_island_data = [41.483, -71.300];

connecticut_data = [41.367, -72.117];

new_york_data = [40.717, -74.000];

new_jersey_data = [39.400, -74.417];

pennsylvania_data = [39.950, -75.167];

maryland_data = [39.283, -76.617];

virginia_data = [36.850, -76.283];

north_carolina_data = [34.200, -77.883];

south_carolina_data = [32.767, -79.933];

% georgia_data = [32.133, -81.150];

florida_data = [25.783, -80.200];

nova_scotia_data = [44.650, -63.600];

new_brunswick_data = [45.283, -66.067];

prince_edward_island_data = [46.233, -63.117];

portugal_data = [38.700, -9.133];

% spain_data = [43.533, -5.550;43.250, -2.917;3.333, -8.667];

% france_data = [48.383, -4.483;49.483, 0.167;48.633, -2.033];

uk_data = [53.400, -2.983;51.500, -0.133;55.850, -4.283];

ireland_data = [53.333, -6.250;51.900, -8.467];

iceland_data = [64.150, -21.933];

% morocco_data = [33.900, -7.600];

western_sahara_data = [27.183, -13.267];

mauritania_data = [18.150, -16.033];

spain_data = [41.39, 2.16;40.41, -3.70;37.27, -5.99];

france_data = [43.29, 5.37;43.70, 7.26;44.84, -0.58];

italy_data = [41.90, 12.48;45.46, 9.19; 40.85, 14.26];

morocco_data = [33.59, -7.61;34.05, -6.83;31.63, -7.99];

algeria_data = [36.75, 3.05;35.69, -0.63;36.36, 6.78];

tunisia_data = [36.81, 10.18;34.73, 10.77;35.82, 10.63];

ukraine_data = [46.48, 30.73;44.63, 33.52;47.10, 37.55];

russia_data = [43.59, 39.73;44.57, 37.78;44.73, 37.92];

romania_data = [44.18, 28.65;43.83, 28.63;45.14, 28.84];

bulgaria_data = [43.21, 27.91;42.50, 27.46;42.66, 27.72];

% turkey_data = [41.01, 28.98;41.00, 39.77;41.27, 36.30];

georgia_data = [41.65, 41.63;41.92, 41.68;43.00, 41.01];

great_lakes_us_data = [
    46.97, -87.32;
    46.78, -92.10;
    46.48, -84.36;
    41.88, -87.62;
    43.03, -87.90;
    42.33, -83.05;
    43.65, -79.38;
    43.25, -79.87;
    46.53, -80.98;
    41.49, -81.69;
    42.88, -78.85;
    42.13, -80.08;
    44.82, -87.97;
    43.61, -86.24;
    41.66, -83.55
];


great_lakes_canada_data = [
    48.37, -84.46;
    48.23, -88.32;
    42.31, -83.03;
    42.98, -81.23;
    46.53, -80.98;
    46.30, -79.46;
    43.45, -80.49;
    43.09, -79.06;
    43.25, -79.87;
    43.18, -79.25;
    42.31, -83.03;
    42.96, -82.41;
    44.28, -78.28
];


china_data = [
    53.11, 122.51;
    20.02, 110.35;
    23.36, 116.69;
    31.22, 121.45;
    36.07, 120.38;
    39.12, 117.18;
    38.91, 121.61;
    39.93, 119.57;
    37.51, 122.11;
    35.42, 119.46;
    34.59, 119.18;
    30.00, 121.54;
    26.08, 119.30;
    24.48, 118.07;
    23.13, 113.23;
    22.54, 114.07;
    22.25, 113.54;
    20.02, 110.35
];

japan_data = [
    43.06, 141.31;
    35.68, 139.69;
    34.69, 135.50;
    35.17, 136.90;
    35.02, 135.75;
    33.59, 130.40;
    26.21, 127.68
];

korea_data = [
    37.56, 126.99;
    35.10, 129.07;
    33.25, 126.50
];


north_korea_data = [
    39.02, 125.77;
    39.97, 127.53;
    39.72, 127.12;
    41.80, 129.78
];


turkey_data = [
    41.01, 28.98;
    38.42, 27.13;
    36.88, 30.72
];


syria_data = [
    35.52, 35.93;
    34.88, 35.87
];


lebanon_data = [
    33.89, 35.50;
    34.49, 35.86
];


israel_data = [
    32.08, 34.78;
    32.79, 34.98
];

palestine_data = [31.51, 34.43];


egypt_data = [
    31.20, 29.92;
    30.70, 32.51;
    29.98, 32.52
];


northwest_corner = [66 + 32/60, -(23 + 16/60)];

southwest_corner = [63 + 23/60, -(24 + 32/60)];

southeast_corner = [63 + 40/60, -(14 + 28/60)];

northeast_corner = [66 + 25/60, -(14 + 46/60)];

reykjavik = [64 + 8/60, -(21 + 56/60)];
akureyri = [65 + 41/60, -(18 + 6/60)];
seydisfjordur = [65 + 14/60, -(13 + 53/60)];
vik = [63 + 25/60, -(19 + 1/60)];


% Combine all data
latitude = [maine_data(:, 1); new_hampshire_data(:, 1); massachusetts_data(:, 1); 
                rhode_island_data(:, 1); connecticut_data(:, 1); new_york_data(:, 1); 
                new_jersey_data(:, 1); pennsylvania_data(:, 1); maryland_data(:, 1); 
                virginia_data(:, 1); north_carolina_data(:, 1); south_carolina_data(:, 1); 
                georgia_data(:, 1); florida_data(:, 1); nova_scotia_data(:, 1); 
                new_brunswick_data(:, 1); prince_edward_island_data(:, 1); portugal_data(:, 1); 
                spain_data(:, 1); france_data(:, 1); uk_data(:, 1); ireland_data(:, 1); 
                iceland_data(:, 1); morocco_data(:, 1); western_sahara_data(:, 1); 
                mauritania_data(:, 1);spain_data(:, 1); france_data(:, 1); italy_data(:, 1); 
                morocco_data(:, 1); algeria_data(:, 1); tunisia_data(:, 1);ukraine_data(:, 1); russia_data(:, 1); romania_data(:, 1); 
                bulgaria_data(:, 1); turkey_data(:, 1); georgia_data(:, 1); 
                great_lakes_us_data(:, 1); great_lakes_canada_data(:, 1);china_data(:, 1); japan_data(:, 1); korea_data(:, 1); 
                north_korea_data(:, 1); turkey_data(:, 1); syria_data(:, 1); 
                lebanon_data(:, 1); israel_data(:, 1); palestine_data(:, 1); 
                egypt_data(:, 1);northwest_corner(1); southwest_corner(1);southeast_corner(1); northeast_corner(1);
                reykjavik(1);akureyri(1); seydisfjordur(1); vik(1)];

longitude = [maine_data(:, 2); new_hampshire_data(:, 2); massachusetts_data(:, 2); 
                 rhode_island_data(:, 2); connecticut_data(:, 2); new_york_data(:, 2); 
                 new_jersey_data(:, 2); pennsylvania_data(:, 2); maryland_data(:, 2); 
                 virginia_data(:, 2); north_carolina_data(:, 2); south_carolina_data(:, 2); 
                 georgia_data(:, 2); florida_data(:, 2); nova_scotia_data(:, 2); 
                 new_brunswick_data(:, 2); prince_edward_island_data(:, 2); portugal_data(:, 2); 
                 spain_data(:, 2); france_data(:, 2); uk_data(:, 2); ireland_data(:, 2); 
                 iceland_data(:, 2); morocco_data(:, 2); western_sahara_data(:, 2); 
                 mauritania_data(:, 2);spain_data(:, 2); france_data(:, 2); italy_data(:, 2); 
                 morocco_data(:, 2); algeria_data(:, 2); tunisia_data(:, 2);ukraine_data(:, 2); russia_data(:, 2); romania_data(:, 2); 
                 bulgaria_data(:, 2); turkey_data(:, 2); georgia_data(:, 2); 
                 great_lakes_us_data(:, 2); great_lakes_canada_data(:, 2);china_data(:, 2); japan_data(:, 2); korea_data(:, 2); 
                 north_korea_data(:, 2); turkey_data(:, 2); syria_data(:, 2); 
                 lebanon_data(:, 2); israel_data(:, 2); palestine_data(:, 2); 
                 egypt_data(:, 2);northwest_corner(2);southwest_corner(2);southeast_corner(2); northeast_corner(2);
                 reykjavik(2); akureyri(2);seydisfjordur(2);vik(2)];


% Define the size and color of the bubble
size = 20;
% color = rand(1,3); 
color = [255,69,0]./360; 


% drawing
scatterm(latitude, longitude, size, color, 'filled')