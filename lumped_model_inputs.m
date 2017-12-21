function varargout = lumped_model_inputs(varargin)
% LUMPED_MODEL_INPUTS MATLAB code for lumped_model_inputs.fig
%      LUMPED_MODEL_INPUTS, by itself, creates a new LUMPED_MODEL_INPUTS or raises the existing
%      singleton*.
%
%      H = LUMPED_MODEL_INPUTS returns the handle to a new LUMPED_MODEL_INPUTS or the handle to
%      the existing singleton*.
%
%      LUMPED_MODEL_INPUTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LUMPED_MODEL_INPUTS.M with the given input arguments.
%
%      LUMPED_MODEL_INPUTS('Property','Value',...) creates a new LUMPED_MODEL_INPUTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lumped_model_inputs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lumped_model_inputs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lumped_model_inputs

% Last Modified by GUIDE v2.5 21-Dec-2017 13:55:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lumped_model_inputs_OpeningFcn, ...
                   'gui_OutputFcn',  @lumped_model_inputs_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before lumped_model_inputs is made visible.
function lumped_model_inputs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lumped_model_inputs (see VARARGIN)

% Choose default command line output for lumped_model_inputs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Setting slide bar positions
% for heart rate
set(handles.edit_hr,'String',60)
set(handles.slider_hr,'Value',60)

% for atrial ventricular delay
set(handles.edit_avdelay,'String',0.2)
set(handles.slider_vd,'Value',0.2)

% for RV-LV delay
set(handles.edit_rvlvd,'String',0)
set(handles.slider3_rv_lv_delay,'Value',0)


% UIWAIT makes lumped_model_inputs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lumped_model_inputs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider_hr_Callback(hObject, eventdata, handles)
% hObject    handle to slider_hr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

new_hr = get(handles.slider_hr,'Value');
set(handles.edit_hr,'String',new_hr)


% --- Executes during object creation, after setting all properties.
function slider_hr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_hr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_vd_Callback(hObject, eventdata, handles)
% hObject    handle to slider_vd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

new_hr = get(handles.slider_vd,'Value');
set(handles.edit_avdelay,'String',new_hr)


% --- Executes during object creation, after setting all properties.
function slider_vd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_vd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_rv_lv_delay_Callback(hObject, eventdata, handles)
% hObject    handle to slider3_rv_lv_delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

new_hr = get(handles.slider3_rv_lv_delay,'Value');
set(handles.edit_rvlvd,'String',new_hr)


% --- Executes during object creation, after setting all properties.
function slider3_rv_lv_delay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3_rv_lv_delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit_hr_Callback(hObject, eventdata, handles)
% hObject    handle to edit_hr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_hr as text
%        str2double(get(hObject,'String')) returns contents of edit_hr as a double
new_hr = get(handles.edit_hr,'String');
new_hr = str2num(new_hr);
if (new_hr > 29 && new_hr <231)
    set(handles.slider_hr,'Value',new_hr)
else
    d = dialog('Position',[300 300 250 150],'Name','Invalide heart rate');

    txt = uicontrol('Parent',d,...
               'Style','text',...
               'Position',[20 80 210 40],...
               'String','Please select a value between 30 and 230 bpm. Close to continue!');

    btn = uicontrol('Parent',d,...
               'Position',[85 20 70 25],...
               'String','Close',...
               'Callback','delete(gcf)');
end

% --- Executes during object creation, after setting all properties.
function edit_hr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_hr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_avdelay_Callback(hObject, eventdata, handles)
% hObject    handle to edit_avdelay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_avdelay as text
%        str2double(get(hObject,'String')) returns contents of edit_avdelay as a double

new_hr = get(handles.edit_avdelay,'String');
new_hr = str2num(new_hr);
if (new_hr > 0 && new_hr <0.5)
    set(handles.slider_vd,'Value',new_hr)
else
    d = dialog('Position',[300 300 250 150],'Name','Invalide heart rate');

    txt = uicontrol('Parent',d,...
               'Style','text',...
               'Position',[20 80 210 40],...
               'String','Please select a value between 0 and 0.5. Close to continue!');

    btn = uicontrol('Parent',d,...
               'Position',[85 20 70 25],...
               'String','Close',...
               'Callback','delete(gcf)');
end


% --- Executes during object creation, after setting all properties.
function edit_avdelay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_avdelay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_rvlvd_Callback(hObject, eventdata, handles)
% hObject    handle to edit_rvlvd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_rvlvd as text
%        str2double(get(hObject,'String')) returns contents of edit_rvlvd as a double

new_hr = get(handles.edit_rvlvd,'String');
new_hr = str2num(new_hr);
if (new_hr > 0 && new_hr <0.5)
    set(handles.slider3_rv_lv_delay,'Value',new_hr)
else
    d = dialog('Position',[300 300 250 150],'Name','Invalide heart rate');

    txt = uicontrol('Parent',d,...
               'Style','text',...
               'Position',[20 80 210 40],...
               'String','Please select a value between 0 and 0.5. Close to continue!');

    btn = uicontrol('Parent',d,...
               'Position',[85 20 70 25],...
               'String','Close',...
               'Callback','delete(gcf)');
end


% --- Executes during object creation, after setting all properties.
function edit_rvlvd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_rvlvd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in run_simulation.
function run_simulation_Callback(hObject, eventdata, handles)
% hObject    handle to run_simulation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global flag_output;

set(handles.run_simulation,'BackgroundColor','red')

clc; format compact; format long e;

outputfile = './output/output_data.txt';
displaytime = 1.0;
beats = 10.0;

hr = str2num(get(handles.edit_hr,'String'));
vd = str2num(get(handles.edit_avdelay,'String')); % atria ventricular delay
rvlvd = str2num(get(handles.edit_rvlvd,'String')); % added RV LV delay

% Atria and Ventricles
table1= get(handles.uitable1); % ventricle parameters
LVpar = table1.Data(1,:); 
RVpar = table1.Data(2,:); 

table2= get(handles.uitable2); % atria parameters
LApar = table2.Data(1,:);
RApar = table2.Data(2,:);

% Calcium transient parameters

Camin = 0.1; 
CamaxLV = LVpar(2); 
CamaxRV = RVpar(2); 
timing = 50.;
Ca_dur = 280.; 
tau_act = 20.; 
tau_deact = 50.; 

% Valves; last comlumn was added for calulating regurgitation JGF
table3= get(handles.uitable3); % valve parameters
TVpar  = table3.Data(1,:); 
PVvpar = table3.Data(2,:); 
MVpar  = table3.Data(3,:); 
AVpar  = table3.Data(4,:);  

% Vascular flow nodes
table4= get(handles.uitable4); % vascular flow nodes
SCpar  = table4.Data(1,:); 
RAIpar = table4.Data(2,:);
PCpar  = table4.Data(3,:); 
LAIpar = table4.Data(4,:); 

% Vascular compartments
table5= get(handles.uitable5); % vascular compartments
PVpar  = table5.Data(1,:);
SApar  = table5.Data(2,:);
SVpar  = table5.Data(3,:);
PApar  = table5.Data(4,:);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%   Calculations start here!!!!
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

start = 0.0;
dt = 0.0025;
time = start:dt:start+(1.0+beats)*60.0/hr; 
rho = 1.0;
Fmax = 1.41;
SLR = 1.8;
XBrate = 1.00;
Catime = 0.0:0.001:1.0;

% Calcium profile
CaLV = Catgen(Catime,0.001,Camin,CamaxLV,timing,Ca_dur,tau_act,tau_deact);
CaRV = Catgen(Catime,0.001,Camin,CamaxRV,timing,Ca_dur,tau_act,tau_deact);

% computed LV Elastance parameters
Vp = LVpar(6); Vd0 = LVpar(3);
Pd0 = LVpar(4); Ed0 = LVpar(5);
Vmin = LVpar(7); Pmin = LVpar(8);
Vn = fsolve(@funVn,(Vd0-Vmin)/log(-(Pmin-Pd0)/Ed0),[],Vd0,Vmin,Pmin,Pd0,Ed0);
PV_LV(1) = Ed0 * Vp;
PV_LV(2) = Ed0 * Vn;
PV_LV(3) = Pd0 - PV_LV(1);
PV_LV(4) = Pd0 + PV_LV(2);
PV_LV(5) = Vd0;
PV_LV(6) = Vp;
PV_LV(7) = Vn;

% computed RV Elastance parameters
Vp = RVpar(6); Vd0 = RVpar(3);
Pd0 = RVpar(4); Ed0 = RVpar(5);
Vmin = RVpar(7); Pmin = RVpar(8);
Vn = fsolve(@funVn,(Vd0-Vmin)/log(-(Pmin-Pd0)/Ed0),[],Vd0,Vmin,Pmin,Pd0,Ed0);
PV_RV(1) = Ed0 * Vp;
PV_RV(2) = Ed0 * Vn;
PV_RV(3) = Pd0 - PV_RV(1);
PV_RV(4) = Pd0 + PV_RV(2);
PV_RV(5) = Vd0;
PV_RV(6) = Vp;
PV_RV(7) = Vn;

% computed LA Elastance parameters
Vp = LApar(6+1); Vd0 = LApar(3+1);
Pd0 = LApar(4+1); Ed0 = LApar(5+1);
Vmin = LApar(7+1); Pmin = LApar(8+1);
Vn = fsolve(@funVn,(Vd0-Vmin)/log(-(Pmin-Pd0)/Ed0),[],Vd0,Vmin,Pmin,Pd0,Ed0);
PV_LA(1) = Ed0 * Vp;
PV_LA(2) = Ed0 * Vn;
PV_LA(3) = Pd0 - PV_LA(1);
PV_LA(4) = Pd0 + PV_LA(2);
PV_LA(5) = Vd0;
PV_LA(6) = Vp;
PV_LA(7) = Vn;

% computed RV Elastance parameters
Vp = RApar(6+1); Vd0 = RApar(3+1);
Pd0 = RApar(4+1); Ed0 = RApar(5+1);
Vmin = RApar(7+1); Pmin = RApar(8+1);
Vn = fsolve(@funVn,(Vd0-Vmin)/log(-(Pmin-Pd0)/Ed0),[],Vd0,Vmin,Pmin,Pd0,Ed0);
PV_RA(1) = Ed0 * Vp;
PV_RA(2) = Ed0 * Vn;
PV_RA(3) = Pd0 - PV_RA(1);
PV_RA(4) = Pd0 + PV_RA(2);
PV_RA(5) = Vd0;
PV_RA(6) = Vp;
PV_RA(7) = Vn;

'Initializing...';
% number of compartments
nc = 16;
% number of Rice XB model sets (7 state variables each)
pRice  = 2;
% solution vector init
y0 = zeros(nc+7*pRice,1);

load data y0;

BLOOD_VOLUME = sum(y0(9:16));

'computing...';
options = odeset('RelTol',1e-6,'AbsTol',[1e-8 1e-8 1e-8]);
[t,y] = ode23tb(@cardiolumpedCVRNL,time,y0',[],PV_LV,PV_RV,PV_LA,PV_RA,LVpar,RVpar,LApar,RApar,...
                   TVpar,PVvpar,MVpar,AVpar,SCpar,RAIpar,PCpar,LAIpar,PVpar,SApar,...
                   SVpar,PApar,hr,vd,rho,CaLV,CaRV,rvlvd,nc,pRice,Fmax,time(1),XBrate,SLR);

'Post Processing...'

for i=1:length(t)
    % recompute pressures
    p(i,1) = PatriumNL(t(i),hr,y(i,9),LApar,PV_LA,time(1));
    p(i,2) = PventricleRice(y(i,10),LVpar,PV_LV,y(i,:),Fmax,nc,1);
    p(i,5) = PatriumNL(t(i),hr,y(i,13),RApar,PV_RA,time(1));
    p(i,6) = PventricleRice(y(i,14),RVpar,PV_RV,y(i,:),Fmax,nc,2);
    p(i,3) = Pchamber(y(i,11),SApar);
    p(i,4) = Pchamber(y(i,12),SVpar);
    p(i,7) = Pchamber(y(i,15),PApar);
    p(i,8) = Pchamber(y(i,16),PVpar);
    % recompute LV normalized force
    sl(i)  = SLR*(y(i,10)/LVpar(3))^0.2;
    if (sl(i) < 2.2)
        alfa(i) = 1.0 - (2.2-sl(i))^2.2;
    else
        alfa(i) = 1.0;
    end
    Fnorm(i) = alfa(i)*(y(i,nc+3)+y(i,nc+5)+2.*y(i,nc+6)+3.*y(i,nc+7))/Fmax;
end

DPDTLV = diff(p(:,2))./diff(t);

VOL = 20:150;
for i=1:length(VOL)
    % passive pressure contribution
    if (VOL(i) >= PV_LV(5))
        Pdl(i) = PV_LV(1)*exp((VOL(i)-PV_LV(5))/PV_LV(6))+PV_LV(3);
    else
        Pdl(i) = PV_LV(4)-PV_LV(2)*exp((PV_LV(5)-VOL(i))/PV_LV(7));
    end
end

for i=1:length(VOL)
    % passive pressure contribution
    if (VOL(i) >= PV_RV(5))
        Pdr(i) = PV_RV(1)*exp((VOL(i)-PV_RV(5))/PV_RV(6))+PV_RV(3);
    else
        Pdr(i) = PV_RV(4)-PV_RV(2)*exp((PV_RV(5)-VOL(i))/PV_RV(7));
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Calculations done
disp('Simulation Done !!')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Graphs
disp('Getting graphs ...')
% finding analysis cycle
figure,
plot(y(:,3))
legend('Ao flow','NorthEast');
title('Select analysis cycle: click on begining of systole')
xlabel('time point');
ylabel('flow (ml/s)');
% select begining of systole  
[x_pt,~] = ginput(1);   % Select a point with the mouse
t_bs = int32(x_pt);     % find closest time point to the selected point

% select desceleration systole         
title('Select analysis cycle: click on end of diastole')
[x_pt,~] = ginput(1);   % Select a point with the mouse
t_ed = int32(x_pt);     % find closest time point to the selected point
close(1)    

t1 = t_bs-5;
t2 = t_ed+5;
time = t(t1:t2);

% Pressure
P_LA = p(t1:t2,1);
P_LV = p(t1:t2,2);
P_SA = p(t1:t2,3);
P_RA = p(t1:t2,5);
P_RV = p(t1:t2,6);
P_PA = p(t1:t2,7);

% Volume
V_AV = y(t1:t2,3);
V_LA = y(t1:t2,9);
V_LV = y(t1:t2,10);
V_RA = y(t1:t2,13);
V_RV = y(t1:t2,14);

% Velocity
if MVpar(5)>0
    % systolic MV velocity considers MV valve area
    Vel_MV = y(t1:t2,2)/MVpar(2);
    % diastolic MV velocity considers MV regurgitant area
    % Not sure of this assumption JGF
    ind_V_AR = find(y(t1:t2,2)<0);
    Vel_MV(ind_V_AR) = Vel_MV(ind_V_AR)*MVpar(2)/MVpar(5);    
else
    Vel_MV = y(t1:t2,2)/MVpar(2);
end

if TVpar(5)>0
    % systolic TV velocity considers TV valve area
    Vel_TV = y(t1:t2,6)/TVpar(2);
    % diastolic TV velocity considers TV regurgitant area
    % Not sure of this assumption JGF
    ind_V_AR = find(y(t1:t2,6)<0);
    Vel_TV(ind_V_AR) = Vel_TV(ind_V_AR)*TVpar(2)/TVpar(5);    
else
    Vel_TV = y(t1:t2,6)/TVpar(2);
end

if PVvpar(5)>0
    % systolic PVv velocity considers PVv valve area
    Vel_PV = y(t1:t2,7)/PVvpar(2);
    % diastolic PVv velocity considers PVv regurgitant area
    % Not sure of this assumption JGF
    ind_V_AR = find(y(t1:t2,7)<0);
    Vel_PV(ind_V_AR) = Vel_PV(ind_V_AR)*PVvpar(2)/PVvpar(5);    
else
    Vel_PV = y(t1:t2,7)/PVvpar(2);
end

if AVpar(5)>0
    % systolic Ao velocity considers Ao valve area
    Vel_AV = y(t1:t2,3)/AVpar(2);
    % diastolic Ao velocity considers Ao regurgitant area
    % Not sure of this assumption JGF
    ind_V_AR = find(y(t1:t2,3)<0);
    Vel_AV(ind_V_AR) = Vel_AV(ind_V_AR)*AVpar(2)/AVpar(5);        
else
    Vel_AV = y(t1:t2,3)/AVpar(2);
end

% flags for plots
if (flag_output.graph_pressure_LA)&&(flag_output.graph_pressure_LV)&&(flag_output.graph_pressure_SA)
    figure,
    plot(time,P_LA,time,P_LV,time,P_SA)
    legend('LA','LV','SA','NorthEast');
    xlabel('time (s)');
    ylabel('pressure (mmHg)');
elseif (flag_output.graph_pressure_SA)&&(flag_output.graph_pressure_LV)    
    figure,
    plot(time,P_SA,time,P_LV)
    legend('LA','LV','NorthEast');
    xlabel('time (s)');
    ylabel('pressure (mmHg)');
else
    if(flag_output.graph_pressure_LA)
        figure,
        plot(time,P_LA)
        legend('LA','NorthEast');
        xlabel('time (s)');
        ylabel('pressure (mmHg)');
    end
    
    if(flag_output.graph_pressure_LV)
        figure,
        plot(time,P_LV)
        legend('LV','NorthEast');
        xlabel('time (s)');
        ylabel('pressure (mmHg)');
    end
    
    if(flag_output.graph_pressure_SA)
        figure,
        plot(time,P_SA)
        legend('SA','NorthEast');
        xlabel('time (s)');
        ylabel('pressure (mmHg)');
    end
end    

if (flag_output.graph_pressure_RA)&&(flag_output.graph_pressure_RV)&&(flag_output.graph_pressure_PA)
    figure,
    plot(time,P_RA,time,P_RV,time,P_PA)
    legend('RA','RV','PA','NorthEast');
    xlabel('time (s)');
    ylabel('pressure (mmHg)');
elseif (flag_output.graph_pressure_PA)&&(flag_output.graph_pressure_RV)    
    figure,
    plot(time,P_PA,time,P_RV)
    legend('PA','RV','NorthEast');
    xlabel('time (s)');
    ylabel('pressure (mmHg)');
else
    if(flag_output.graph_pressure_RA)
        figure,
        plot(time,P_RA)
        legend('RA','NorthEast');
        xlabel('time (s)');
        ylabel('pressure (mmHg)');
    end
    
    if(flag_output.graph_pressure_RV)
        figure,
        plot(time,P_RV)
        legend('RV','NorthEast');
        xlabel('time (s)');
        ylabel('pressure (mmHg)');
    end
    
    if(flag_output.graph_pressure_PA)
        figure,
        plot(time,P_PA)
        legend('PA','NorthEast');
        xlabel('time (s)');
        ylabel('pressure (mmHg)');
    end
end    

if (flag_output.graph_volume_LA)&&(flag_output.graph_volume_LV)
    figure,
    plot(time,V_LA,time,V_LV)
    legend('LA','LV','NorthEast');
    xlabel('time (s)');
    ylabel('volume (ml)');
else
    if(flag_output.graph_volume_LA)
        figure,
        plot(time,V_LA)
        legend('LA','NorthEast');
        xlabel('time (s)');
        ylabel('volume (ml)');
    end
    
    if(flag_output.graph_volume_LV)
        figure,
        plot(time,V_LV)
        legend('LV','NorthEast');
        xlabel('time (s)');
        ylabel('volume (ml)');
    end    
end    

if (flag_output.graph_volume_RA)&&(flag_output.graph_volume_RV)
    figure,
    plot(time,V_RA,time,V_RV)
    legend('RA','RV','NorthEast');
    xlabel('time (s)');
    ylabel('volume (ml)');
else
    if(flag_output.graph_volume_RA)
        figure,
        plot(time,V_RA)
        legend('RA','NorthEast');
        xlabel('time (s)');
        ylabel('volume (ml)');
    end
    
    if(flag_output.graph_volume_RV)
        figure,
        plot(time,V_RV)
        legend('RV','NorthEast');
        xlabel('time (s)');
        ylabel('volume (ml)');
    end    
end 

if (flag_output.graph_velocity_AV)&&(flag_output.graph_velocity_MV)
    figure,
    plot(time,Vel_AV,time,Vel_MV)
    legend('AV','MV','NorthEast');
    xlabel('time (s)');
    ylabel('velocity (m/s)');
else
    if(flag_output.graph_velocity_AV)
        figure,
        plot(time,Vel_AV)
        legend('AV','NorthEast');
        xlabel('time (s)');
        ylabel('velocity (m/s)');
    end
    
    if(flag_output.graph_velocity_MV)
        figure,
        plot(time,Vel_MV)
        legend('MV','NorthEast');
        xlabel('time (s)');
        ylabel('velocity (m/s)');
    end    
end 

if (flag_output.graph_velocity_TV)&&(flag_output.graph_velocity_PV)
    figure,
    plot(time,Vel_TV,time,Vel_PV)
    legend('TV','PV','NorthEast');
    xlabel('time (s)');
    ylabel('velocity (m/s)');
else
    if(flag_output.graph_velocity_TV)
        figure,
        plot(time,Vel_TV)
        legend('TV','NorthEast');
        xlabel('time (s)');
        ylabel('velocity (m/s)');
    end
    
    if(flag_output.graph_velocity_PV)
        figure,
        plot(time,Vel_PV)
        legend('PV','NorthEast');
        xlabel('time (s)');
        ylabel('velocity (m/s)');
    end    
end 


%% Parameters calculation
disp('Calculating selected parameters ...')
A=cell(1);
Ai=1;

%LV End-diastolic volume
if flag_output.parLVEDV
    LV_EDV=max(V_LV);
    disp(strcat('LVEDV (ml):',num2str(LV_EDV)))
    A{Ai,1}='LVEDV (ml):';
    A{Ai,2}=num2str(LV_EDV);
    Ai=Ai+1;
end

%LV End-systolic volume
if flag_output.parLVESV
    LV_ESV=min(V_LV);
    disp(strcat('LVESV (ml):',num2str(LV_ESV)))
    A{Ai,1}='LVESV (ml):';
    A{Ai,2}=num2str(LV_ESV);
    Ai=Ai+1;
end

%LV Stroke volume
if flag_output.parLVSV
    LV_SV = LV_EDV-LV_ESV;
    disp(strcat('LV Stroke Volume (ml):',num2str(LV_SV)))
    A{Ai,1}='LV Stroke Volume (ml):';
    A{Ai,2}=num2str(LV_SV);
    Ai=Ai+1;
end 

%LV Ejection fraction 
if flag_output.parLVEF
    LV_EF = LV_SV/LV_EDV*100;
    disp(strcat('LV Ejection Fraction (%):',num2str(LV_EF)))
    A{Ai,1}='LV Ejection Fraction (%):';
    A{Ai,2}=num2str(LV_EF);
    Ai=Ai+1;    
end

%LV maximal pressure  
if flag_output.parLVPmax
    LV_Pmax = max(P_LV);
    disp(strcat('LV maximal pressure (mmHg):',num2str(LV_Pmax)))
    A{Ai,1}='LV maximal pressure (mmHg):';
    A{Ai,2}=num2str(LV_Pmax);
    Ai=Ai+1;    
end

%LV End-systolic pressure 
if flag_output.parLVPes
    % Find AV closure
    LV_Pes_test_ind = find(Vel_AV<=0);
    LV_Pes = P_LV(LV_Pes_test_ind(1));
    disp(strcat('LV End-systolic pressure (mmHg):',num2str(LV_Pes)))
    A{Ai,1}='LV End-systolic pressure (mmHg):';
    A{Ai,2}=num2str(LV_Pes);
    Ai=Ai+1; 
end

if flag_output.parLVPmin
    %LV minimal pressure  
    LV_Pmin = min(P_LV);
    disp(strcat('LV minimal pressure (mmHg):',num2str(LV_Pmin)))
    A{Ai,1}='LV minimal pressure (mmHg):';
    A{Ai,2}=num2str(LV_Pmin);
    Ai=Ai+1;     
end

%LV Pre-A wave LV end-diastolic pressure
if flag_output.parLVPpreA
    figure('Name','Pre_A'),
    plot(P_LV)
    legend('LV Pressure','NorthEast');
    title('Select LV Pre-A wave LV end-diastolic pressure')
    xlabel('time point');
    ylabel('LV Pressure (mmHg)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos = int32(x_pt);     % find closest time point to the selected point
    LV_PpreA = P_LV(t_pos);
    disp(strcat('LV Pre-A wave LV end-diastolic pressure (mmHg):',num2str(LV_PpreA)))
    close('Pre_A');
    A{Ai,1}='LV Pre-A wave LV end-diastolic pressure (mmHg):';
    A{Ai,2}=num2str(LV_PpreA);
    Ai=Ai+1;         
end

%LV Post-A wave LV end-diastolic pressure  
if flag_output.parLVpostA
    figure('Name','Post_A'),
    plot(P_LV)
    legend('LV Pressure','NorthEast');
    title('Select LV Post-A wave LV end-diastolic pressure')
    xlabel('time point');
    ylabel('LV Pressure (mmHg)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos = int32(x_pt);     % find closest time point to the selected point
    LV_PpostA = P_LV(t_pos);
    disp(strcat('LV Post-A wave LV end-diastolic pressure (mmHg):',num2str(LV_PpostA)))
    close('Post_A');
    A{Ai,1}='LV Post-A wave LV end-diastolic pressure (mmHg):';
    A{Ai,2}=num2str(LV_PpostA);
    Ai=Ai+1;             
end

%LV Systolic dp/dt
if flag_output.parLV_Sdpdt
    figure('Name','LV Systolic dP/dt'),
    plot(Vel_MV)
    legend('Mitral Valve Velocity','NorthEast');
    title('Select ramp points, firs at 1 m/s after at 3 m/s')
    xlabel('time point');
    ylabel('Mitral Valve Velocity (m/s)');
    % select begining of systole  
    [x_pt1,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt1);     % find closest time point to the selected point
    [x_pt2,~] = ginput(1);   % Select a point with the mouse
    t_pos2 = int32(x_pt2);     % find closest time point to the selected point    
    LV_Sdpdt = (4*Vel_MV(t_pos2)^2-4*Vel_MV(t_pos1)^2)/(time(t_pos2)-time(t_pos1));
    disp(strcat('LV Systolic dp/dt (mmHg/s):',num2str(LV_Sdpdt)))
    close('LV Systolic dP/dt');
    A{Ai,1}='LV Systolic dp/dt (mmHg/s):';
    A{Ai,2}=num2str(LV_Sdpdt);
    Ai=Ai+1;                 
end

%LV Diastolic dp/dt  
if flag_output.parLV_Ddpdt
    figure('Name','LV Diastolic dP/dt'),
    plot(Vel_MV)
    legend('Mitral Valve Velocity','NorthEast');
    title('Select ramp points, firs at 1 m/s after at 3 m/s')
    xlabel('time point');
    ylabel('Mitral Valve Velocity (m/s)');
    % select begining of systole  
    [x_pt1,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt1);     % find closest time point to the selected point
    [x_pt2,~] = ginput(1);   % Select a point with the mouse
    t_pos2 = int32(x_pt2);     % find closest time point to the selected point    
    LV_Ddpdt = (4*Vel_MV(t_pos2)^2-4*Vel_MV(t_pos1)^2)/(time(t_pos2)-time(t_pos1));    
    disp(strcat('LV Diastolic dp/dt (mmHg/s):',num2str(LV_Ddpdt)))
    close('LV Diastolic dP/dt');
    A{Ai,1}='LV Diastolic dp/dt (mmHg/s):';
    A{Ai,2}=num2str(LV_Ddpdt);
    Ai=Ai+1;                   
end

%LV isovolumetric contraction time   
if flag_output.parLVIVCT
    figure('Name','LV isovolumetric contraction time'),
    plot(time,P_LA,time,P_LV,time,P_SA)
    legend('LA','LV','SA','NorthEast');
    xlabel('time (s)');
    title('Select time points')
    ylabel('Pressure (mmHg)');
    % select begining of systole  
    [x_pt1,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt1);     % find closest time point to the selected point
    [x_pt2,~] = ginput(1);   % Select a point with the mouse
    t_pos2 = int32(x_pt2);     % find closest time point to the selected point    
    LVIVCT = abs(time(t_pos2)-time(t_pos1));    
    disp(strcat('LV isovolumetric contraction time (s):',num2str(LVIVCT)))
    close('LV isovolumetric contraction time')
    A{Ai,1}='LV isovolumetric contraction time (s):';
    A{Ai,2}=num2str(LVIVCT);
    Ai=Ai+1;                 
end

%LV isovolumetric relaxation time   
if flag_output.parLVIVRT
    figure('Name','LV isovolumetric relaxation time'),
    plot(time,P_LA,time,P_LV,time,P_SA)
    legend('LA','LV','SA','NorthEast');
    xlabel('time (s)');
    title('Select time points')
    ylabel('Pressure (mmHg)');
    % select begining of systole  
    [x_pt1,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt1);     % find closest time point to the selected point
    [x_pt2,~] = ginput(1);   % Select a point with the mouse
    t_pos2 = int32(x_pt2);     % find closest time point to the selected point    
    LVIVRT = abs(time(t_pos2)-time(t_pos1));   
    disp(strcat('LV isovolumetric relaxation time (s):',num2str(LVIVRT)))
    close('LV isovolumetric relaxation time')
    A{Ai,1}='LV isovolumetric relaxation time (s):';
    A{Ai,2}=num2str(LVIVRT);
    Ai=Ai+1;                 
end

%LV relaxation time constant (0 asymp)   
if flag_output.parLVTau0
    disp(strcat('LV relaxation time constant (0 asymp):','NA'))
end

%LV relaxation time constant (Float)   
if flag_output.parLVTauFloat
    disp(strcat('LV relaxation time constant (float):','NA'))
end

%LV end-systolic elastance    
if flag_output.parLVEes
    LV_Ees = LV_Pes/LV_ESV;
    disp(strcat('LV end-systolic elastance (mmHg/ml):',num2str(LV_Ees)))
    A{Ai,1}='LV end-systolic elastance (mmHg/ml):';
    A{Ai,2}=num2str(LV_Ees);
    Ai=Ai+1;               
end

%LA maximal volume     
if flag_output.parLAmaxV
    LA_Volmax = max(V_LA);
    disp(strcat('LA maximal volume (ml):',num2str(LA_Volmax)))
    A{Ai,1}='LA maximal volume (ml):';
    A{Ai,2}=num2str(LA_Volmax);
    Ai=Ai+1;               
end

%LA volume before atrial contraction      
if flag_output.parLAPreAV
    figure('Name','LA volume before atrial contraction'),
    plot(V_LA)
    legend('LA Volumee','NorthEast');
    title('Select point before atrial contraction')
    xlabel('time point');
    ylabel('LA Volume (ml)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos = int32(x_pt);     % find closest time point to the selected point
    LA_PreAV = V_LA(t_pos);    
    close('LA volume before atrial contraction');    
    disp(strcat('LA volume before atrial contraction (ml):',num2str(LA_PreAV)))
    A{Ai,1}='LA volume before atrial contraction (ml):';
    A{Ai,2}=num2str(LA_PreAV);
    Ai=Ai+1;               
end

%LA volume after atrial contraction      
if flag_output.parLAPostAV
    figure('Name','LA volume after atrial contraction'),
    plot(V_LA)
    legend('LA Volume','NorthEast');
    title('Select point after atrial contraction')
    xlabel('time point');
    ylabel('LA Volume (ml)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos = int32(x_pt);     % find closest time point to the selected point
    LA_PostAV = V_LA(t_pos);    
    close('LA volume after atrial contraction');
    disp(strcat('LA volume after atrial contraction (ml):',num2str(LA_PostAV)))
    A{Ai,1}='LA volume after atrial contraction (ml):';
    A{Ai,2}=num2str(LA_PostAV);
    Ai=Ai+1;               
end

%LA stroke volume      
if flag_output.parLASV
    figure('Name','LA stroke volume'),
    plot(V_LA)
    legend('LA Volume','NorthEast');
    title('Select points for ejection period')
    xlabel('time point');
    ylabel('LA Volume (ml)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt);     % find closest time point to the selected point
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos2 = int32(x_pt);     % find closest time point to the selected point
    
    LA_SV = sum(V_LA(t_pos1:t_pos2));    
    close('LA stroke volume');
    disp(strcat('LA stroke volume (ml):',num2str(LA_SV)))
    A{Ai,1}='LA stroke volume (ml):';
    A{Ai,2}=num2str(LA_SV);
    Ai=Ai+1;               
end

%LA ejection fraction  
if flag_output.parLAEF
    LA_EF = LA_SV/LA_PreAV*100;    
    disp(strcat('LA ejection fraction (%):',num2str(LA_EF)))
    A{Ai,1}='LA ejection fraction (%):';
    A{Ai,2}=num2str(LA_EF);
    Ai=Ai+1;               
end

%LA reservoir volume        
if flag_output.parLAReservoirV
    LA_ReservoirV = LA_Volmax-LA_PostAV;    
    disp(strcat('LA reservoir volume (ml):',num2str(LA_ReservoirV)))
    A{Ai,1}='LA reservoir volume (ml):';
    A{Ai,2}=num2str(LA_ReservoirV);
    Ai=Ai+1;               
end

%LA mean LA pressure         
if flag_output.parLAPmean
    figure('Name','LA pressure'),
    plot(P_LA)
    legend('LA Pressure','NorthEast');
    title('Select points first max Pressure and then end-ejection point')
    xlabel('time point');
    ylabel('LA Pressure (mmHg)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt);     % find closest time point to the selected point
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos2 = int32(x_pt);     % find closest time point to the selected point
    LA_Pmean = P_LA(t_pos2)-P_LA(t_pos1);    
    close('LA pressure');
    disp(strcat('Mean LA pressure (mmHg):',num2str(LA_Pmean)))
    A{Ai,1}='Mean LA pressure (mmHg):';
    A{Ai,2}=num2str(LA_Pmean);
    Ai=Ai+1;               
end

%LA V-wave pressure         
if flag_output.parLAPVwave
    figure('Name','LA pressure'),
    plot(P_LA)
    legend('LA Pressure','NorthEast');
    title('Select point of max Pressure during ventricular systole')
    xlabel('time point');
    ylabel('LA Pressure (mmHg)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt);     % find closest time point to the selected point 
    LA_PVwave = P_LA(t_pos1);    
    close('LA pressure');
    disp(strcat('LA V-wave pressure (mmHg):',num2str(LA_PVwave)))
    A{Ai,1}='LA V-wave pressure (mmHg):';
    A{Ai,2}=num2str(LA_PVwave);
    Ai=Ai+1;               
end

%LA A-wave pressure 
if flag_output.parLAPAwave
    figure('Name','LA pressure'),
    plot(P_LA)
    legend('LA Pressure','NorthEast');
    title('Select point of max Pressure during atrial systole')
    xlabel('time point');
    ylabel('LA Pressure (mmHg)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt);     % find closest time point to the selected point 
    LA_PAwave = P_LA(t_pos1);    
    close('LA pressure');
    disp(strcat('LA A-wave pressure (mmHg):',num2str(LA_PAwave)))
    A{Ai,1}='LA A-wave pressure (mmHg):';
    A{Ai,2}=num2str(LA_PAwave);
    Ai=Ai+1;               
end

%LA postive dp/dt 
if flag_output.parLA_Sdpdt
    disp(strcat('LA positive dp/dt (mmHg/s):','NA'))
end

%LA negative dp/dt         
if flag_output.parLA_Ddpdt
    disp(strcat('LA negative dp/dt (mmHg/s):','NA'))
end

%RV End-diastolic volume
if flag_output.parRVEDV
    RV_EDV = max(V_RV);
    disp(strcat('RV End-diastolic volume (ml):',num2str(RV_EDV)))
    A{Ai,1}='RV End-diastolic volume (ml):';
    A{Ai,2}=num2str(RV_EDV);
    Ai=Ai+1;               
end

%RV End-systolic volume
if flag_output.parRVESV
    RV_ESV = min(V_RV);
    disp(strcat('RV End-systolic volume (ml):',num2str(RV_ESV)))
    A{Ai,1}='RV End-systolic volume (ml):';
    A{Ai,2}=num2str(RV_ESV);
    Ai=Ai+1;               
end

%RV stroke volume
if flag_output.parRVSV
    RV_SV = RV_EDV-RV_ESV;
    disp(strcat('RV stroke volume (ml):',num2str(RV_SV)))
    A{Ai,1}='RV stroke volume (ml):';
    A{Ai,2}=num2str(RV_SV);
    Ai=Ai+1;               
end

%RV ejection fraction
if flag_output.parRVEF
    RV_EF = RV_SV/RV_EDV*100;
    disp(strcat('RV ejection fraction (%):',num2str(RV_EF)))
    A{Ai,1}='RV ejection fraction (%):';
    A{Ai,2}=num2str(RV_EF);
    Ai=Ai+1;               
end

%RV maximal pressure 
if flag_output.parRVPmax
    RV_Pmax = max(P_RV);
    disp(strcat('RV maximal pressure (mmHg):',num2str(RV_Pmax)))
    A{Ai,1}='RV maximal pressure (mmHg):';
    A{Ai,2}=num2str(RV_Pmax);
    Ai=Ai+1;               
end

%RV End-systolic pressure 
if flag_output.parRVPes
    % Find PV closure
    RV_Pes_test_ind = find(Vel_PV<=0);
    RV_Pes = P_RV(RV_Pes_test_ind(1));
    disp(strcat('RV End-systolic pressure (mmHg):',num2str(RV_Pes)))
    A{Ai,1}='RV End-systolic pressure (mmHg):';
    A{Ai,2}=num2str(RV_Pes);
    Ai=Ai+1;               
end

%RV minimal pressure  
if flag_output.parRVPmin
    RV_Pmin = min(P_RV);
    disp(strcat('RV minimal pressure (mmHg):',num2str(RV_Pmin)))
    A{Ai,1}='RV minimal pressure (mmHg):';
    A{Ai,2}=num2str(RV_Pmin);
    Ai=Ai+1;               
end

%RV Pre-A wave RV end-diastolic pressure  
if flag_output.parRVPpreA
    figure('Name','Pre_A'),
    plot(P_RV)
    legend('RV Pressure','NorthEast');
    title('Select RV Pre-A wave RV end-diastolic pressure')
    xlabel('time point');
    ylabel('RV Pressure (mmHg)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos = int32(x_pt);     % find closest time point to the selected point
    RV_PpreA = P_RV(t_pos);       
    disp(strcat('RV Pre-A wave RV end-diastolic pressure (mmHg):',num2str(RV_PpreA)))
    close('Pre_A');
    A{Ai,1}='RV Pre-A wave RV end-diastolic pressure (mmHg):';
    A{Ai,2}=num2str(RV_PpreA);
    Ai=Ai+1;               
end

%RV Post-A wave RV end-diastolic pressure  
if flag_output.parRVPpostA
    figure('Name','Post_A'),
    plot(P_RV)
    legend('RV Pressure','NorthEast');
    title('Select RV Post-A wave RV end-diastolic pressure')
    xlabel('time point');
    ylabel('RV Pressure (mmHg)');    
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos = int32(x_pt);     % find closest time point to the selected point
    RV_PpostA = P_RV(t_pos);       
    disp(strcat('RV Post-A wave RV end-diastolic pressure (mmHg):',num2str(RV_PpostA)))
    close('Post_A');
    A{Ai,1}='RV Post-A wave RV end-diastolic pressure (mmHg):';
    A{Ai,2}=num2str(RV_PpostA);
    Ai=Ai+1;               
end

%RV Systolic dp/dt  
if flag_output.parRV_Sdpdt
    disp(strcat('RV Systolic dp/dt (mmHg/s):','NA'))
end

%RV Diastolic dp/dt 
if flag_output.parRV_Ddpdt    
    disp(strcat('RV Diastolic dp/dt (mmHg/s):','NA'))
end

%RV end-systolic elastance
if flag_output.parRVEes 
    RV_Ees = RV_Pes/RV_ESV;
    disp(strcat('RV end-systolic elastance (mmHg/ml):',num2str(RV_Ees)))
    A{Ai,1}='RV end-systolic elastance (mmHg/ml):';
    A{Ai,2}=num2str(RV_Ees);
    Ai=Ai+1;               
end

%RA maximal volume
if flag_output.parRAmaxV
    RA_maxV = max(V_RA);
    disp(strcat('RA maximal volume (ml):',num2str(RA_maxV)))
    A{Ai,1}='RA maximal volume (ml):';
    A{Ai,2}=num2str(RA_maxV);
    Ai=Ai+1;               
end

%RA Volume just before atrial contraction  
if flag_output.parRAPreAV
    figure('Name','RA volume before atrial contraction'),
    plot(V_RA)
    legend('RA Volumee','NorthEast');
    title('Select point before atrial contraction')
    xlabel('time point');
    ylabel('RA Volume (ml)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos = int32(x_pt);     % find closest time point to the selected point
    RA_PreAV = V_RA(t_pos);    
    close('RA volume before atrial contraction');    
    disp(strcat('RA volume before atrial contraction (ml):',num2str(RA_PreAV)))
    A{Ai,1}='RA volume before atrial contraction (ml):';
    A{Ai,2}=num2str(RA_PreAV);
    Ai=Ai+1;               
end

%RA Volume just after atrial contraction  
if flag_output.parRAPostAV
    figure('Name','RA volume before after contraction'),
    plot(V_RA)
    legend('RA Volumee','NorthEast');
    title('Select point after atrial contraction')
    xlabel('time point');
    ylabel('RA Volume (ml)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos = int32(x_pt);     % find closest time point to the selected point
    RA_PostAV = V_RA(t_pos);    
    close('RA volume after atrial contraction');    
    disp(strcat('RA volume after atrial contraction (ml):',num2str(RA_PostAV)))
    A{Ai,1}='RA volume after atrial contraction (ml):';
    A{Ai,2}=num2str(RA_PostAV);
    Ai=Ai+1;               
end

%RA Stroke Volume  
if flag_output.parRASV
    figure('Name','RA stroke volume'),
    plot(V_RA)
    legend('RA Volume','NorthEast');
    title('Select points for ejection period')
    xlabel('time point');
    ylabel('RA Volume (ml)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt);     % find closest time point to the selected point
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos2 = int32(x_pt);     % find closest time point to the selected point
    
    RA_SV = sum(V_RA(t_pos1:t_pos2));    
    close('RA stroke volume');
    disp(strcat('RA stroke volume (ml):',num2str(RA_SV)))
    A{Ai,1}='RA stroke volume (ml):';
    A{Ai,2}=num2str(RA_SV);
    Ai=Ai+1;               
end

%RA ejection fraction   
if flag_output.parRAEF
    RA_EF = RA_SV/RA_PreAV*100;    
    disp(strcat('RA ejection fraction (%):',num2str(RA_EF)))
    A{Ai,1}='RA ejection fraction (%):';
    A{Ai,2}=num2str(RA_EF);
    Ai=Ai+1;               
end

%RA reservoir volume    
if flag_output.parRAReservoirV
    RA_ReservoirV = RA_Volmax-RA_PostAV;    
    disp(strcat('RA reservoir volume (ml):',num2str(RA_ReservoirV)))
    A{Ai,1}='RA reservoir volume (ml):';
    A{Ai,2}=num2str(RA_ReservoirV);
    Ai=Ai+1;               
end

%RA mean RA pressure     
if flag_output.parRAPmean
    figure('Name','RA pressure'),
    plot(P_RA)
    legend('RA Pressure','NorthEast');
    title('Select points first max Pressure and then end-ejection point')
    xlabel('time point');
    ylabel('RA Pressure (mmHg)');
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt);     % find closest time point to the selected point
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos2 = int32(x_pt);     % find closest time point to the selected point
    RA_Pmean = P_RA(t_pos2)-P_RA(t_pos1);    
    close('RA pressure');
    disp(strcat('Mean RA pressure (mmHg):',num2str(RA_Pmean)))
    A{Ai,1}='Mean RA pressure (mmHg):';
    A{Ai,2}=num2str(RA_Pmean);
    Ai=Ai+1;               
end

%RA V-wave pressure      
if flag_output.parRAPVwave
    figure('Name','RA pressure'),
    plot(P_RA)
    legend('RA Pressure','NorthEast');
    title('Select point of V-wave Pressure during auricular systole')
    xlabel('time point');
    ylabel('RA Pressure (mmHg)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt);     % find closest time point to the selected point 
    RA_PVwave = P_RA(t_pos1);    
    close('RA pressure');
    disp(strcat('RA V-wave pressure (mmHg):',num2str(RA_PVwave)))
    A{Ai,1}='RA V-wave pressure (mmHg):';
    A{Ai,2}=num2str(RA_PVwave);
    Ai=Ai+1;               
end

%RA A-wave pressure      
if flag_output.parRAPAwave
    figure('Name','RA pressure'),
    plot(P_RA)
    legend('LA Pressure','NorthEast');
    title('Select point of A-wave Pressure during atrial systole')
    xlabel('time point');
    ylabel('RA Pressure (mmHg)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt);     % find closest time point to the selected point 
    RA_PAwave = P_RA(t_pos1);    
    close('RA pressure');
    disp(strcat('RA A-wave pressure (mmHg):',num2str(RA_PAwave)))
    A{Ai,1}='RA A-wave pressure (mmHg):';
    A{Ai,2}=num2str(RA_PAwave);
    Ai=Ai+1;               
end

%RA positive dp/dt      
if flag_output.parRA_Sdpdt
    disp(strcat('RA positive dp/dt:','NA'))
end

%RA negative dp/dt      
if flag_output.parRA_Ddpdt
    disp(strcat('RA negative dp/dt:','NA'))
end

%AV Forward stroke volume
if flag_output.parAVFSV
    AV_FSV = sum(V_AV>0);
    disp(strcat('AV foward stroke volume (ml):',num2str(AV_FSV)))
    A{Ai,1}='AV foward stroke volume (ml):';
    A{Ai,2}=num2str(AV_FSV);
    Ai=Ai+1;               
end

%AV Regurgitant volume 
if flag_output.parAVRV
    AV_RV = sum(V_AV<0);
    disp(strcat('AV regurgitant volume (ml):',num2str(AV_RV)))
    A{Ai,1}='AV regurgitant volume (ml):';
    A{Ai,2}=num2str(AV_RV);
    Ai=Ai+1;               
end

%AV net flow  
if flag_output.parAVNSV
    AV_NSV = AV_FSV-AV_RV;
    disp(strcat('AV net flow (ml):',num2str(AV_NSV)))
    A{Ai,1}='AV net flow (ml):';
    A{Ai,2}=num2str(AV_NSV);
    Ai=Ai+1;               
end

%AV regurgitant fraction   
if flag_output.parAVRF
    AV_RF = AV_RV/AV_FSV*100;
    disp(strcat('AV regurgitant fraction (%):',num2str(AV_RF)))
    A{Ai,1}='AV regurgitant fraction (%):';
    A{Ai,2}=num2str(AV_RF);
    Ai=Ai+1;               
end

%AV Hemodynamic pressure half-time   
if flag_output.parART1_2H
    disp(strcat('AV Hemodynamic pressure half-time:','NA'))
end

%AV Doppler pressure half-time   
if flag_output.parART1_2D
    disp(strcat('AV Doppler pressure half-time:','NA'))
end

%AV forward peak velocity    
if flag_output.parAVPV 
    AV_PV = max(Vel_AV);
    disp(strcat('AV forward peak velocity (cm/s):',num2str(AV_PV)))
    A{Ai,1}='AV forward peak velocity (cm/s):';
    A{Ai,2}=num2str(AV_PV);
    Ai=Ai+1;               
end

%AV forward peak gradient    
if flag_output.parAVPG
    AV_PG = 4*((AV_PV/100)^2);
    disp(strcat('AV forward peak gradient (mmHg):',num2str(AV_PG)))
    A{Ai,1}='AV forward peak gradient (mmHg):';
    A{Ai,2}=num2str(AV_PG);
    Ai=Ai+1;               
end

%AV forward mean gradient    
if flag_output.parAVMG
    AV_MG = mean(4*(Vel_AV(Vel_AV>0)/100).^2);
    disp(strcat('AV forward mean gradient (mmHg):',num2str(AV_MG)))
    A{Ai,1}='AV forward mean gradient (mmHg):';
    A{Ai,2}=num2str(AV_MG);
    Ai=Ai+1;               
end

%MV Forward stroke volume
if flag_output.parMVFSV
    MV_FSV = sum(V_MV>0);
    disp(strcat('MV foward stroke volume (ml):',num2str(MV_FSV)))
    A{Ai,1}='MV foward stroke volume (ml):';
    A{Ai,2}=num2str(MV_FSV);
    Ai=Ai+1;               
end

%MV Regurgitant volume 
if flag_output.parMVRV
    MV_RV = sum(V_MV<0);
    disp(strcat('MV regurgitant volume (ml):',num2str(MV_RV)))
    A{Ai,1}='MV regurgitant volume (ml):';
    A{Ai,2}=num2str(MV_RV);
    Ai=Ai+1;               
end

%MV net flow  
if flag_output.parMVNSV
    MV_NSV = MV_FSV-MV_RV;
    disp(strcat('MV regurgitant volume (ml):',num2str(MV_NSV)))
    A{Ai,1}='MV regurgitant volume (ml):';
    A{Ai,2}=num2str(MV_NSV);
    Ai=Ai+1;               
end

%MV regurgitant fraction   
if flag_output.parMVRF
    MV_RF = MV_RV/MV_FSV*100;
    disp(strcat('MV regurgitant fraction (%):',num2str(MV_RF)))
    A{Ai,1}='MV regurgitant fraction (%):';
    A{Ai,2}=num2str(MV_RF);
    Ai=Ai+1;               
end

%MV Hemodynamic pressure half-time   
if flag_output.parMRT1_2H
    disp(strcat('MV Hemodynamic pressure half-time:','NA'))
end

%MV Doppler pressure half-time   
if flag_output.parMRT1_2D
    disp(strcat('MV Doppler pressure half-time:','NA'))
end

%MV early forward peak velocity    
if flag_output.parMVPVE    
    disp(strcat('MV early forward peak velocity (cm/s):','NA'))
end

%MV atrial forward peak velocity    
if flag_output.parMVPVA     
    disp(strcat('MV atrial forward peak velocity (cm/s):','NA'))
end

%MV forward peak gradient    
if flag_output.parMVPG
    MV_PG = max(4*(Vel_MV(Vel_MV>0)/100).^2);
    disp(strcat('MV forward peak gradient (mmHg):',num2str(MV_PG)))
    A{Ai,1}='MV forward peak gradient (mmHg):';
    A{Ai,2}=num2str(MV_PG);
    Ai=Ai+1;               
end

%MV forward mean gradient    
if flag_output.parMVMG
    MV_MG = mean(4*(Vel_MV(Vel_MV>0)/100).^2);
    disp(strcat('MV forward mean gradient (mmHg):',num2str(MV_MG)))
    A{Ai,1}='MV forward mean gradient (mmHg):';
    A{Ai,2}=num2str(MV_MG);
    Ai=Ai+1;               
end

%PV Forward stroke volume
if flag_output.parPVFSV
    PV_FSV = sum(V_PV>0);
    disp(strcat('PV foward stroke volume (ml):',num2str(PV_FSV)))
    A{Ai,1}='PV foward stroke volume (ml):';
    A{Ai,2}=num2str(PV_FSV);
    Ai=Ai+1;               
end

%PV Regurgitant volume 
if flag_output.parPVRV
    PV_RV = sum(V_PV<0);
    disp(strcat('PV regurgitant volume (ml):',num2str(PV_RV)))
    A{Ai,1}='PV regurgitant volume (ml):';
    A{Ai,2}=num2str(PV_RV);
    Ai=Ai+1;               
end

%PV net flow  
if flag_output.parPVNSV
    PV_NSV = PV_FSV-PV_RV;
    disp(strcat('PV net flow (ml):',num2str(PV_NSV)))
    A{Ai,1}='PV net flow (ml):';
    A{Ai,2}=num2str(PV_NSV);
    Ai=Ai+1;               
end

%PV regurgitant fraction   
if flag_output.parPVRF
    PV_RF = PV_RV/PV_FSV*100;
    disp(strcat('PV regurgitant fraction (%):',num2str(PV_RF)))
    A{Ai,1}='PV regurgitant fraction (%):';
    A{Ai,2}=num2str(PV_RF);
    Ai=Ai+1;               
end

%PV Hemodynamic pressure half-time   
if flag_output.parPRT1_2H
    disp(strcat('PV Hemodynamic pressure half-time:','NA'))
end

%PV Doppler pressure half-time   
if flag_output.parPRT1_2D
    disp(strcat('PV Doppler pressure half-time:','NA'))
end

%PV forward peak velocity    
if flag_output.parPVPV 
    PV_PV = max(Vel_PV);
    disp(strcat('PV forward peak velocity (cm/s):',num2str(PV_PV)))
    A{Ai,1}='PV forward peak velocity (cm/s):';
    A{Ai,2}=num2str(PV_PV);
    Ai=Ai+1;               
end

%PV forward peak gradient    
if flag_output.parPVPG
    PV_PG = 4*((PV_PV/100)^2);
    disp(strcat('PV forward peak gradient (mmHg):',num2str(PV_PG)))
    A{Ai,1}='PV forward peak gradient (mmHg):';
    A{Ai,2}=num2str(PV_PG);
    Ai=Ai+1;               
end

%PV forward mean gradient    
if flag_output.parPVMG
    PV_MG = mean(4*(Vel_PV(Vel_PV>0)/100).^2);
    disp(strcat('PV forward mean gradient (mmHg):',num2str(PV_MG)))
    A{Ai,1}='PV forward mean gradient (mmHg):';
    A{Ai,2}=num2str(PV_MG);
    Ai=Ai+1;               
end

%TV Forward stroke volume
if flag_output.parTVFSV
    TV_FSV = sum(V_TV>0);
    disp(strcat('TV foward stroke volume (ml):',num2str(TV_FSV)))
    A{Ai,1}='TV foward stroke volume (ml):';
    A{Ai,2}=num2str(TV_FSV);
    Ai=Ai+1;               
end

%TV Regurgitant volume 
if flag_output.parTVRV
    TV_RV = sum(V_TV<0);
    disp(strcat('TV regurgitant volume (ml):',num2str(TV_RV)))
    A{Ai,1}='TV regurgitant volume (ml):';
    A{Ai,2}=num2str(TV_RV);
    Ai=Ai+1;               
end

%TV net flow  
if flag_output.parTVNSV
    TV_NSV = TV_FSV-TV_RV;
    disp(strcat('TV net flow (ml):',num2str(TV_NSV)))
    A{Ai,1}='TV net flow (ml):';
    A{Ai,2}=num2str(TV_NSV);
    Ai=Ai+1;               
end

%TV regurgitant fraction   
if flag_output.parTVRF
    TV_RF = TV_RV/TV_FSV*100;
    disp(strcat('TV regurgitant fraction (%):',num2str(TV_RF)))
    A{Ai,1}='TV regurgitant fraction (%):';
    A{Ai,2}=num2str(TV_RF);
    Ai=Ai+1;               
end

%TV Hemodynamic pressure half-time   
if flag_output.parTRT1_2H
    disp(strcat('TV Hemodynamic pressure half-time:','NA'))
end

%TV Doppler pressure half-time   
if flag_output.parTRT1_2D
    disp(strcat('TV Doppler pressure half-time:','NA'))
end

%TV early forward peak velocity    
if flag_output.parTVPVE    
    disp(strcat('TV early forward peak velocity (cm/s):','NA'))
end

%TV atrial forward peak velocity    
if flag_output.parTVPVA     
    disp(strcat('TV atrial forward peak velocity (cm/s):','NA'))
end

%TV forward peak gradient    
if flag_output.parTVPG
    disp(strcat('TV forward peak gradient (mmHg):','NA'))
end

%TV forward mean gradient    
if flag_output.parTVMG
    TV_MG = mean(4*(Vel_TV(Vel_TV>0)/100).^2);
    disp(strcat('TV forward mean gradient (mmHg):',num2str(TV_MG)))
    A{Ai,1}='TV forward mean gradient (mmHg):';
    A{Ai,2}=num2str(TV_MG);
    Ai=Ai+1;               
end

%Ao Systolic blood pressure    
if flag_output.parAoSBP
    figure('Name','Ao Systolic Blood Pressure'),
    plot(P_SA)
    legend('Ao Pressure','NorthEast');
    title('Select point of Systolic Pressure')
    xlabel('time point');
    ylabel('Ao Systolic Blood Pressure (mmHg)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt);     % find closest time point to the selected point 
    S_ABP = P_SA(t_pos1);    
    close('Ao Systolic Blood Pressure');
    disp(strcat('Ao Systolic Blood Pressure (mmHg):',num2str(S_ABP)))
    A{Ai,1}='Ao Systolic Blood Pressure (mmHg):';
    A{Ai,2}=num2str(S_ABP);
    Ai=Ai+1;               
end

%Ao Diastolic blood pressure
if flag_output.parApDBP
    figure('Name','Ao Diastolic blood pressure'),
    plot(P_SA)
    legend('Ao Pressure','NorthEast');
    title('Select point of Diastolic Pressure')
    xlabel('time point');
    ylabel('Ao Diastolic blood pressure (mmHg)');
    % select begining of systole  
    [x_pt,~] = ginput(1);   % Select a point with the mouse
    t_pos1 = int32(x_pt);     % find closest time point to the selected point 
    D_ABP = P_SA(t_pos1);    
    close('Ao Diastolic blood pressure');
    disp(strcat('Ao Diastolic Blood Pressure (mmHg):',num2str(D_ABP)))
    A{Ai,1}='Ao Diastolic Blood Pressure (mmHg):';
    A{Ai,2}=num2str(D_ABP);
    Ai=Ai+1;               
end

%Ao Pulse pressure
if flag_output.parAoPP
    AoPP=D_ABP-S_ABP;
    disp(strcat('Ao Pulse pressure (mmHg):',num2str(AoPP)))
    A{Ai,1}='Ao Pulse pressure (mmHg):';
    A{Ai,2}=num2str(AoPP);
    Ai=Ai+1;              
end

%Ao Arterial elastance
if flag_output.parAoEa
    AoEa=S_ABP/AV_FSV;
    disp(strcat('Ao Arterial elastance (mmHg/ml):',num2str(AoEa)))
    A{Ai,1}='Ao Arterial elastance (mmHg/ml):';
    A{Ai,2}=num2str(AoEa);
    Ai=Ai+1;              
end

%Ao Ventriculo-arterial coupling
if flag_output.parVAC
    VAC=LV_Ees/AoEa;
    disp(strcat('Ao Ventriculo-arterial coupling :','NA'))
end

%Systemic stroke volume
if flag_output.parSysSV
    disp(strcat('Systemic stroke volume :','NA'))
end

%Systemic cardiac output
if flag_output.parSysCO
    disp(strcat('Systemic cardiac output :','NA'))
end

%SV Maximal pressure
if flag_output.parSVmaxBP
    disp(strcat('SV Maximal pressure :','NA'))
end

%SV Minimal pressure
if flag_output.parSVminBP
    disp(strcat('SV Minimal pressure :','NA'))
end

%SV Mean pressure
if flag_output.parSVmeanBP
    disp(strcat('SV Mean pressure :','NA'))
end

%IVC peak S flow
if flag_output.parIVCpeakS
    disp(strcat('IVC peak S flow :','NA'))
end

%IVC peak D flow
if flag_output.parIVCpeakD
    disp(strcat('IVC peak D flow :','NA'))
end

%IVC peak AR flow
if flag_output.parIVCpeakAR
    disp(strcat('IVC peak AR flow :','NA'))
end

%IVC peak VR flow
if flag_output.parIVCpeakVR
    disp(strcat('SV Mean pressure :','NA'))
end

%Pulmonary stroke volume
if flag_output.parPulmSV
    disp(strcat('Pulmonary stroke volume :','NA'))
end

%Pulmonary cardiac output
if flag_output.parPulmCO
    disp(strcat('Pulmonary cardiac output :','NA'))
end

%Pulmonary vein peak S flow
if flag_output.parPveinPeakS
    disp(strcat('Pulmonary vein peak S flow :','NA'))
end

%Pulmonary vein peak D flow
if flag_output.parPveinPeakD
    disp(strcat('Pulmonary vein peak D flow :','NA'))
end

%Pulmonary vein peak AR flow
if flag_output.parPveinPeakAR
    disp(strcat('Pulmonary vein peak AR flow :','NA'))
end

%Pulmonary vein peak VR flow
if flag_output.parPveinPeakVR
    disp(strcat('Pulmonary vein peak VR flow :','NA'))
end

%Total blood volume
if flag_output.parBloodVol
    disp(strcat('Total blood volume :',num2str(BLOOD_VOLUME)))
    A{Ai,1}='Total blood volume :';
    A{Ai,2}=num2str(BLOOD_VOLUME);
    Ai=Ai+1;              
end

%Saving matlab data 
if flag_output.parMat
    disp(strcat('Saving matlab data :','NA'))
end

%Saving excel data
if flag_output.parexcel
    disp(strcat('Saving excel data to working path ...'))
    filename = 'LP_model_output.xlsx';
    sheet = 1;
    xlRange = 'A1';
    xlswrite(filename,A,sheet,xlRange)
end

set(handles.run_simulation,'BackgroundColor','green')


% --- Executes during object creation, after setting all properties.
function uitable3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in outputs_model.
function outputs_model_Callback(hObject, eventdata, handles)
% hObject    handle to outputs_model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global flag_output;

flag_output.graph_pressure_LA =0;
flag_output.graph_pressure_LV =0;
flag_output.graph_pressure_SA =0;
flag_output.graph_pressure_RA =0;
flag_output.graph_pressure_RV =0;
flag_output.graph_pressure_PA =0;
flag_output.graph_volume_LA   =0;
flag_output.graph_volume_LV   =0;
flag_output.graph_volume_RA   =0;
flag_output.graph_volume_RV   =0;
flag_output.graph_velocity_MV =0;
flag_output.graph_velocity_AV =0;
flag_output.graph_velocity_TV =0;
flag_output.graph_velocity_PV =0;

flag_output.parLVEDV          =0;
flag_output.parLVESV          =0;
flag_output.parLVSV           =0;
flag_output.parLVEF           =0;
flag_output.parLVPmax         =0;
flag_output.parLVPes          =0;
flag_output.parLVPmin         =0;
flag_output.parLVPpreA        =0;
flag_output.parLVpostA        =0;
flag_output.parLV_Sdpdt       =0;
flag_output.parLV_Ddpdt       =0;
flag_output.parLVIVCT         =0;
flag_output.parLVIVRT         =0;
flag_output.parLVTau0         =0;
flag_output.parLVTauFloat     =0;
flag_output.parLVEes          =0;

flag_output.parLAmaxV         =0;
flag_output.parLAPreAV        =0;
flag_output.parLAPostAV       =0;
flag_output.parLASV           =0;
flag_output.parLAEF           =0;
flag_output.parLAReservoirV   =0;
flag_output.parLAPmean        =0;
flag_output.parLAPVwave       =0;
flag_output.parLAPAwave       =0;
flag_output.parLA_Sdpdt       =0;
flag_output.parLA_Ddpdt       =0;

flag_output.parRVEDV          =0;
flag_output.parRVESV          =0;
flag_output.parRVSV           =0;
flag_output.parRVEF           =0;
flag_output.parRVPmax         =0;
flag_output.parRVPes          =0;
flag_output.parRVPmin         =0;
flag_output.parRVPpreA        =0;
flag_output.parRVPpostA       =0;
flag_output.parRV_Sdpdt       =0;
flag_output.parRV_Ddpdt       =0;
flag_output.parRVEes          =0;

flag_output.parRAmaxV         =0;
flag_output.parRAPreAV        =0; 
flag_output.parRAPostAV       =0;
flag_output.parRASV           =0;
flag_output.parRAEF           =0;
flag_output.parRAReservoirV   =0;
flag_output.parRAPmean        =0;
flag_output.parRAPVwave       =0;
flag_output.parRAPAwave       =0;
flag_output.parRA_Sdpdt       =0;
flag_output.parRA_Ddpdt       =0;

flag_output.parAVFSV          =0;
flag_output.parAVRV           =0;
flag_output.parAVNSV          =0;
flag_output.parAVRF           =0;
flag_output.parART1_2H        =0;
flag_output.parART1_2D        =0;
flag_output.parAVPV           =0;
flag_output.parAVPG           =0;
flag_output.parAVMG           =0;

flag_output.parMVFSV          =0;
flag_output.parMVRV           =0;
flag_output.parMVNSV          =0;
flag_output.parMVRF           =0;
flag_output.parMRT1_2H        =0;
flag_output.parMRT1_2D        =0;
flag_output.parMVPVE          =0;
flag_output.parMVPVA          =0;
flag_output.parMVPG           =0;
flag_output.parMVMG           =0;

flag_output.parPVFSV          =0;
flag_output.parPVRV           =0;
flag_output.parPVNSV          =0;
flag_output.parPVRF           =0;
flag_output.parPRT1_2H        =0;
flag_output.parPRT1_2D        =0;
flag_output.parPVPV           =0;
flag_output.parPVPG           =0;
flag_output.parPVMG           =0;

flag_output.parTVFSV          =0;
flag_output.parTVRV           =0;
flag_output.parTVNSV          =0;
flag_output.parTVRF           =0;
flag_output.parTRT1_2H        =0;
flag_output.parTRT1_2D        =0;
flag_output.parTVPVE          =0;
flag_output.parTVPVA          =0;
flag_output.parTVPG           =0;
flag_output.parTVMG           =0;

flag_output.parAoSBP          =0;
flag_output.parApDBP          =0;
flag_output.parAoPP           =0;
flag_output.parAoEa           =0;
flag_output.parVAC            =0;

flag_output.parSysSV          =0;
flag_output.parSysCO          =0;

flag_output.parSVmaxBP        =0;
flag_output.parSVminBP        =0;
flag_output.parSVmeanBP       =0;

flag_output.parIVCpeakS       =0;
flag_output.parIVCpeakD       =0;
flag_output.parIVCpeakAR      =0;
flag_output.parIVCpeakVR      =0;

flag_output.parPulmSV         =0;
flag_output.parPulmCO         =0;

flag_output.parPveinPeakS     =0;
flag_output.parPveinPeakD     =0;
flag_output.parPveinPeakAR    =0;
flag_output.parPveinPeakVR    =0;

flag_output.parBloodVol       =0;

flag_output.parMat            =0;
flag_output.parexcel          =0;

set(handles.outputs_model,'BackgroundColor','red')
f=outputs_gen;
waitfor(f);
set(handles.outputs_model,'BackgroundColor','green')




% --- Executes on button press in close_all.
function close_all_Callback(hObject, eventdata, handles)
% hObject    handle to close_all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

delete( setdiff( findall(0, 'type', 'figure'), lumped_model_inputs ) );



% --- Executes on button press in Save_all.
function Save_all_Callback(hObject, eventdata, handles)
% hObject    handle to Save_all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


[PathName] = uigetdir;
% hfigs = get(0, 'children');
hinput = findall(0,'type','figure');
for m=2:1:4
saveDataName = fullfile(PathName,sprintf('%s%01d', 'figure', m-1));
set(hinput(1), 'PaperUnits', 'centimeters');
set(hinput(1), 'PaperPosition', [0 0 35 25]);  %x_width=10cm y_width=15cm
saveas(hinput(1), [fullfile(PathName,'input') '.png']);
saveas(hinput(m), [saveDataName '.png']);
end
clc
clear all





