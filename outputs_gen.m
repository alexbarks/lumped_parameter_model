function varargout = outputs_gen(varargin)
% OUTPUTS_GEN MATLAB code for outputs_gen.fig
%      OUTPUTS_GEN, by itself, creates a new OUTPUTS_GEN or raises the existing
%      singleton*.
%
%      H = OUTPUTS_GEN returns the handle to a new OUTPUTS_GEN or the handle to
%      the existing singleton*.
%
%      OUTPUTS_GEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OUTPUTS_GEN.M with the given input arguments.
%
%      OUTPUTS_GEN('Property','Value',...) creates a new OUTPUTS_GEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before outputs_gen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to outputs_gen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help outputs_gen

% Last Modified by GUIDE v2.5 25-Sep-2015 14:33:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @outputs_gen_OpeningFcn, ...
                   'gui_OutputFcn',  @outputs_gen_OutputFcn, ...
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


% --- Executes just before outputs_gen is made visible.
function outputs_gen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to outputs_gen (see VARARGIN)

% Choose default command line output for outputs_gen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes outputs_gen wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = outputs_gen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in graph_pressure_LA.
function graph_pressure_LA_Callback(hObject, eventdata, handles)
% hObject    handle to graph_pressure_LA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_pressure_LA

global flag_output;
flag_output.graph_pressure_LA = get(hObject,'Value');


% --- Executes on button press in graph_pressure_LV.
function graph_pressure_LV_Callback(hObject, eventdata, handles)
% hObject    handle to graph_pressure_LV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_pressure_LV

global flag_output;
flag_output.graph_pressure_LV = get(hObject,'Value');


% --- Executes on button press in graph_pressure_SA.
function graph_pressure_SA_Callback(hObject, eventdata, handles)
% hObject    handle to graph_pressure_SA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_pressure_SA

global flag_output;
flag_output.graph_pressure_SA = get(hObject,'Value');


% --- Executes on button press in graph_pressure_RA.
function graph_pressure_RA_Callback(hObject, eventdata, handles)
% hObject    handle to graph_pressure_RA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_pressure_RA

global flag_output;
flag_output.graph_pressure_RA = get(hObject,'Value');


% --- Executes on button press in graph_pressure_RV.
function graph_pressure_RV_Callback(hObject, eventdata, handles)
% hObject    handle to graph_pressure_RV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_pressure_RV

global flag_output;
flag_output.graph_pressure_RV = get(hObject,'Value');


% --- Executes on button press in graph_pressure_PA.
function graph_pressure_PA_Callback(hObject, eventdata, handles)
% hObject    handle to graph_pressure_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_pressure_PA

global flag_output;
flag_output.graph_pressure_PA = get(hObject,'Value');


% --- Executes on button press in graph_volume_LA.
function graph_volume_LA_Callback(hObject, eventdata, handles)
% hObject    handle to graph_volume_LA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_volume_LA

global flag_output;
flag_output.graph_volume_LA = get(hObject,'Value');


% --- Executes on button press in graph_volume_LV.
function graph_volume_LV_Callback(hObject, eventdata, handles)
% hObject    handle to graph_volume_LV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_volume_LV

global flag_output;
flag_output.graph_volume_LV = get(hObject,'Value');


% --- Executes on button press in graph_volume_RA.
function graph_volume_RA_Callback(hObject, eventdata, handles)
% hObject    handle to graph_volume_RA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_volume_RA

global flag_output;
flag_output.graph_volume_RA = get(hObject,'Value');


% --- Executes on button press in graph_volume_RV.
function graph_volume_RV_Callback(hObject, eventdata, handles)
% hObject    handle to graph_volume_RV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_volume_RV

global flag_output;
flag_output.graph_volume_RV = get(hObject,'Value');


% --- Executes on button press in graph_velocity_MV.
function graph_velocity_MV_Callback(hObject, eventdata, handles)
% hObject    handle to graph_velocity_MV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_velocity_MV

global flag_output;
flag_output.graph_velocity_MV = get(hObject,'Value');


% --- Executes on button press in graph_velocity_AV.
function graph_velocity_AV_Callback(hObject, eventdata, handles)
% hObject    handle to graph_velocity_AV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_velocity_AV

global flag_output;
flag_output.graph_velocity_AV = get(hObject,'Value');


% --- Executes on button press in graph_velocity_TV.
function graph_velocity_TV_Callback(hObject, eventdata, handles)
% hObject    handle to graph_velocity_TV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_velocity_TV

global flag_output;
flag_output.graph_velocity_TV = get(hObject,'Value');


% --- Executes on button press in graph_velocity_PV.
function graph_velocity_PV_Callback(hObject, eventdata, handles)
% hObject    handle to graph_velocity_PV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph_velocity_PV

global flag_output;
flag_output.graph_velocity_PV = get(hObject,'Value');


% --- Executes on button press in parLVEDV.
function parLVEDV_Callback(hObject, eventdata, handles)
% hObject    handle to parLVEDV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVEDV

global flag_output;
flag_output.parLVEDV = get(hObject,'Value');


% --- Executes on button press in parLVESV.
function parLVESV_Callback(hObject, eventdata, handles)
% hObject    handle to parLVESV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVESV

global flag_output;
flag_output.parLVESV = get(hObject,'Value');


% --- Executes on button press in parLVSV.
function parLVSV_Callback(hObject, eventdata, handles)
% hObject    handle to parLVSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVSV

global flag_output;
flag_output.parLVSV = get(hObject,'Value');


% --- Executes on button press in parLVEF.
function parLVEF_Callback(hObject, eventdata, handles)
% hObject    handle to parLVEF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVEF

global flag_output;
flag_output.parLVEF = get(hObject,'Value');


% --- Executes on button press in parLVPmax.
function parLVPmax_Callback(hObject, eventdata, handles)
% hObject    handle to parLVPmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVPmax

global flag_output;
flag_output.parLVPmax = get(hObject,'Value');


% --- Executes on button press in parLVPes.
function parLVPes_Callback(hObject, eventdata, handles)
% hObject    handle to parLVPes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVPes

global flag_output;
flag_output.parLVPes = get(hObject,'Value');


% --- Executes on button press in parLVPmin.
function parLVPmin_Callback(hObject, eventdata, handles)
% hObject    handle to parLVPmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVPmin

global flag_output;
flag_output.parLVPmin = get(hObject,'Value');


% --- Executes on button press in parLVPpreA.
function parLVPpreA_Callback(hObject, eventdata, handles)
% hObject    handle to parLVPpreA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVPpreA

global flag_output;
flag_output.parLVPpreA = get(hObject,'Value');


% --- Executes on button press in parLVPpostA.
function parLVPpostA_Callback(hObject, eventdata, handles)
% hObject    handle to parLVPpostA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVPpostA

global flag_output;
flag_output.parLVpostA = get(hObject,'Value');


% --- Executes on button press in parLV_Sdpdt.
function parLV_Sdpdt_Callback(hObject, eventdata, handles)
% hObject    handle to parLV_Sdpdt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLV_Sdpdt

global flag_output;
flag_output.parLV_Sdpdt = get(hObject,'Value');


% --- Executes on button press in parLV_Ddpdt.
function parLV_Ddpdt_Callback(hObject, eventdata, handles)
% hObject    handle to parLV_Ddpdt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLV_Ddpdt

global flag_output;
flag_output.parLV_Ddpdt = get(hObject,'Value');


% --- Executes on button press in parLVIVCT.
function parLVIVCT_Callback(hObject, eventdata, handles)
% hObject    handle to parLVIVCT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVIVCT

global flag_output;
flag_output.parLVIVCT = get(hObject,'Value');


% --- Executes on button press in parLVIVRT.
function parLVIVRT_Callback(hObject, eventdata, handles)
% hObject    handle to parLVIVRT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVIVRT

global flag_output;
flag_output.parLVIVRT = get(hObject,'Value');


% --- Executes on button press in parLVTau0.
function parLVTau0_Callback(hObject, eventdata, handles)
% hObject    handle to parLVTau0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVTau0

global flag_output;
flag_output.parLVTau0 = get(hObject,'Value');


% --- Executes on button press in parLVTauFloat.
function parLVTauFloat_Callback(hObject, eventdata, handles)
% hObject    handle to parLVTauFloat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVTauFloat

global flag_output;
flag_output.parLVTauFloat = get(hObject,'Value');


% --- Executes on button press in parLVEes.
function parLVEes_Callback(hObject, eventdata, handles)
% hObject    handle to parLVEes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLVEes

global flag_output;
flag_output.parLVEes = get(hObject,'Value');


% --- Executes on button press in parLAmaxV.
function parLAmaxV_Callback(hObject, eventdata, handles)
% hObject    handle to parLAmaxV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLAmaxV

global flag_output;
flag_output.parLAmaxV = get(hObject,'Value');


% --- Executes on button press in parLAPreAV.
function parLAPreAV_Callback(hObject, eventdata, handles)
% hObject    handle to parLAPreAV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLAPreAV

global flag_output;
flag_output.parLAPreAV = get(hObject,'Value');


% --- Executes on button press in parLAPostAV.
function parLAPostAV_Callback(hObject, eventdata, handles)
% hObject    handle to parLAPostAV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLAPostAV

global flag_output;
flag_output.parLAPostAV = get(hObject,'Value');


% --- Executes on button press in parLASV.
function parLASV_Callback(hObject, eventdata, handles)
% hObject    handle to parLASV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLASV

global flag_output;
flag_output.parLASV = get(hObject,'Value');


% --- Executes on button press in parLAEF.
function parLAEF_Callback(hObject, eventdata, handles)
% hObject    handle to parLAEF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLAEF

global flag_output;
flag_output.parLAEF = get(hObject,'Value');


% --- Executes on button press in parLAReservoirV.
function parLAReservoirV_Callback(hObject, eventdata, handles)
% hObject    handle to parLAReservoirV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLAReservoirV

global flag_output;
flag_output.parLAReservoirV = get(hObject,'Value');


% --- Executes on button press in parLAPmean.
function parLAPmean_Callback(hObject, eventdata, handles)
% hObject    handle to parLAPmean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLAPmean

global flag_output;
flag_output.parLAPmean = get(hObject,'Value');


% --- Executes on button press in parLAPVwave.
function parLAPVwave_Callback(hObject, eventdata, handles)
% hObject    handle to parLAPVwave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLAPVwave

global flag_output;
flag_output.parLAPVwave = get(hObject,'Value');


% --- Executes on button press in parLAPAwave.
function parLAPAwave_Callback(hObject, eventdata, handles)
% hObject    handle to parLAPAwave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLAPAwave

global flag_output;
flag_output.parLAPAwave = get(hObject,'Value');


% --- Executes on button press in parLA_Sdpdt.
function parLA_Sdpdt_Callback(hObject, eventdata, handles)
% hObject    handle to parLA_Sdpdt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLA_Sdpdt

global flag_output;
flag_output.parLA_Sdpdt = get(hObject,'Value');


% --- Executes on button press in parLA_Ddpdt.
function parLA_Ddpdt_Callback(hObject, eventdata, handles)
% hObject    handle to parLA_Ddpdt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parLA_Ddpdt

global flag_output;
flag_output.parLA_Ddpdt = get(hObject,'Value');


% --- Executes on button press in parRVEDV.
function parRVEDV_Callback(hObject, eventdata, handles)
% hObject    handle to parRVEDV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRVEDV

global flag_output;
flag_output.parRVEDV = get(hObject,'Value');


% --- Executes on button press in parRVESV.
function parRVESV_Callback(hObject, eventdata, handles)
% hObject    handle to parRVESV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRVESV

global flag_output;
flag_output.parRVESV = get(hObject,'Value');


% --- Executes on button press in parRVSV.
function parRVSV_Callback(hObject, eventdata, handles)
% hObject    handle to parRVSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRVSV

global flag_output;
flag_output.parRVSV = get(hObject,'Value');


% --- Executes on button press in parRVEF.
function parRVEF_Callback(hObject, eventdata, handles)
% hObject    handle to parRVEF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRVEF

global flag_output;
flag_output.parRVEF = get(hObject,'Value');


% --- Executes on button press in parRVPmax.
function parRVPmax_Callback(hObject, eventdata, handles)
% hObject    handle to parRVPmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRVPmax

global flag_output;
flag_output.parRVPmax = get(hObject,'Value');

% --- Executes on button press in parRVPes.
function parRVPes_Callback(hObject, eventdata, handles)
% hObject    handle to parRVPes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRVPes

global flag_output;
flag_output.parRVPes = get(hObject,'Value');


% --- Executes on button press in parRVPmin.
function parRVPmin_Callback(hObject, eventdata, handles)
% hObject    handle to parRVPmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRVPmin

global flag_output;
flag_output.parRVPmin = get(hObject,'Value');


% --- Executes on button press in parRVPpreA.
function parRVPpreA_Callback(hObject, eventdata, handles)
% hObject    handle to parRVPpreA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRVPpreA

global flag_output;
flag_output.parRVPpreA = get(hObject,'Value');


% --- Executes on button press in parRVPpostA.
function parRVPpostA_Callback(hObject, eventdata, handles)
% hObject    handle to parRVPpostA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRVPpostA

global flag_output;
flag_output.parRVPpostA = get(hObject,'Value');


% --- Executes on button press in parRV_Sdpdt.
function parRV_Sdpdt_Callback(hObject, eventdata, handles)
% hObject    handle to parRV_Sdpdt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRV_Sdpdt

global flag_output;
flag_output.parRV_Sdpdt = get(hObject,'Value');


% --- Executes on button press in parRV_Ddpdt.
function parRV_Ddpdt_Callback(hObject, eventdata, handles)
% hObject    handle to parRV_Ddpdt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRV_Ddpdt

global flag_output;
flag_output.parRV_Ddpdt = get(hObject,'Value');


% --- Executes on button press in parRAmaxV.
function parRAmaxV_Callback(hObject, eventdata, handles)
% hObject    handle to parRAmaxV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRAmaxV

global flag_output;
flag_output.parRAmaxV = get(hObject,'Value');


% --- Executes on button press in parRAPreAV.
function parRAPreAV_Callback(hObject, eventdata, handles)
% hObject    handle to parRAPreAV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRAPreAV

global flag_output;
flag_output.parRAPreAV = get(hObject,'Value');


% --- Executes on button press in parRAPostAV.
function parRAPostAV_Callback(hObject, eventdata, handles)
% hObject    handle to parRAPostAV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRAPostAV

global flag_output;
flag_output.parRAPostAV = get(hObject,'Value');


% --- Executes on button press in parRASV.
function parRASV_Callback(hObject, eventdata, handles)
% hObject    handle to parRASV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRASV

global flag_output;
flag_output.parRASV = get(hObject,'Value');


% --- Executes on button press in parRAEF.
function parRAEF_Callback(hObject, eventdata, handles)
% hObject    handle to parRAEF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRAEF

global flag_output;
flag_output.parRAEF = get(hObject,'Value');


% --- Executes on button press in parRAReservoirV.
function parRAReservoirV_Callback(hObject, eventdata, handles)
% hObject    handle to parRAReservoirV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRAReservoirV

global flag_output;
flag_output.parRAReservoirV = get(hObject,'Value');


% --- Executes on button press in parRAPmean.
function parRAPmean_Callback(hObject, eventdata, handles)
% hObject    handle to parRAPmean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRAPmean

global flag_output;
flag_output.parRAPmean = get(hObject,'Value');


% --- Executes on button press in parRAPVwave.
function parRAPVwave_Callback(hObject, eventdata, handles)
% hObject    handle to parRAPVwave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRAPVwave

global flag_output;
flag_output.parRAPVwave = get(hObject,'Value');


% --- Executes on button press in parRAPAwave.
function parRAPAwave_Callback(hObject, eventdata, handles)
% hObject    handle to parRAPAwave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRAPAwave

global flag_output;
flag_output.parRAPAwave = get(hObject,'Value');


% --- Executes on button press in parRA_Sdpdt.
function parRA_Sdpdt_Callback(hObject, eventdata, handles)
% hObject    handle to parRA_Sdpdt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRA_Sdpdt

global flag_output;
flag_output.parRA_Sdpdt = get(hObject,'Value');


% --- Executes on button press in parRA_Ddpdt.
function parRA_Ddpdt_Callback(hObject, eventdata, handles)
% hObject    handle to parRA_Ddpdt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRA_Ddpdt

global flag_output;
flag_output.parRA_Ddpdt = get(hObject,'Value');


% --- Executes on button press in parRVEes.
function parRVEes_Callback(hObject, eventdata, handles)
% hObject    handle to parRVEes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parRVEes

global flag_output;
flag_output.parRVEes = get(hObject,'Value');


% --- Executes on button press in parAVFSV.
function parAVFSV_Callback(hObject, eventdata, handles)
% hObject    handle to parAVFSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAVFSV

global flag_output;
flag_output.parAVFSV = get(hObject,'Value');


% --- Executes on button press in parAVRV.
function parAVRV_Callback(hObject, eventdata, handles)
% hObject    handle to parAVRV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAVRV

global flag_output;
flag_output.parAVRV = get(hObject,'Value');


% --- Executes on button press in parAVNSV.
function parAVNSV_Callback(hObject, eventdata, handles)
% hObject    handle to parAVNSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAVNSV

global flag_output;
flag_output.parAVNSV = get(hObject,'Value');


% --- Executes on button press in parAVRF.
function parAVRF_Callback(hObject, eventdata, handles)
% hObject    handle to parAVRF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAVRF

global flag_output;
flag_output.parAVRF = get(hObject,'Value');


% --- Executes on button press in parART1_2H.
function parART1_2H_Callback(hObject, eventdata, handles)
% hObject    handle to parART1_2H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parART1_2H

global flag_output;
flag_output.parART1_2H = get(hObject,'Value');


% --- Executes on button press in parART1_2D.
function parART1_2D_Callback(hObject, eventdata, handles)
% hObject    handle to parART1_2D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parART1_2D

global flag_output;
flag_output.parART1_2D = get(hObject,'Value');


% --- Executes on button press in parAVPV.
function parAVPV_Callback(hObject, eventdata, handles)
% hObject    handle to parAVPV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAVPV

global flag_output;
flag_output.parAVPV = get(hObject,'Value');


% --- Executes on button press in parAVPG.
function parAVPG_Callback(hObject, eventdata, handles)
% hObject    handle to parAVPG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAVPG

global flag_output;
flag_output.parAVPG = get(hObject,'Value');


% --- Executes on button press in parAVMG.
function parAVMG_Callback(hObject, eventdata, handles)
% hObject    handle to parAVMG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAVMG

global flag_output;
flag_output.parAVMG = get(hObject,'Value');


% --- Executes on button press in parMVFSV.
function parMVFSV_Callback(hObject, eventdata, handles)
% hObject    handle to parMVFSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMVFSV

global flag_output;
flag_output.parMVFSV = get(hObject,'Value');


% --- Executes on button press in parMVRV.
function parMVRV_Callback(hObject, eventdata, handles)
% hObject    handle to parMVRV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMVRV

global flag_output;
flag_output.parMVRV = get(hObject,'Value');


% --- Executes on button press in parMVNSV.
function parMVNSV_Callback(hObject, eventdata, handles)
% hObject    handle to parMVNSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMVNSV

global flag_output;
flag_output.parMVNSV = get(hObject,'Value');


% --- Executes on button press in parMVRF.
function parMVRF_Callback(hObject, eventdata, handles)
% hObject    handle to parMVRF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMVRF

global flag_output;
flag_output.parMVRF = get(hObject,'Value');


% --- Executes on button press in parMRT1_2H.
function parMRT1_2H_Callback(hObject, eventdata, handles)
% hObject    handle to parMRT1_2H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMRT1_2H

global flag_output;
flag_output.parMRT1_2H = get(hObject,'Value');


% --- Executes on button press in parMRT1_2D.
function parMRT1_2D_Callback(hObject, eventdata, handles)
% hObject    handle to parMRT1_2D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMRT1_2D

global flag_output;
flag_output.parMRT1_2D = get(hObject,'Value');


% --- Executes on button press in parMVPVE.
function parMVPVE_Callback(hObject, eventdata, handles)
% hObject    handle to parMVPVE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMVPVE

global flag_output;
flag_output.parMVPVE = get(hObject,'Value');


% --- Executes on button press in parMVPG.
function parMVPG_Callback(hObject, eventdata, handles)
% hObject    handle to parMVPG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMVPG

global flag_output;
flag_output.parMVPG = get(hObject,'Value');


% --- Executes on button press in parMVMG.
function parMVMG_Callback(hObject, eventdata, handles)
% hObject    handle to parMVMG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMVMG

global flag_output;
flag_output.parMVMG = get(hObject,'Value');


% --- Executes on button press in parPVFSV.
function parPVFSV_Callback(hObject, eventdata, handles)
% hObject    handle to parPVFSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPVFSV

global flag_output;
flag_output.parPVFSV = get(hObject,'Value');


% --- Executes on button press in parPVRV.
function parPVRV_Callback(hObject, eventdata, handles)
% hObject    handle to parPVRV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPVRV

global flag_output;
flag_output.parPVRV = get(hObject,'Value');


% --- Executes on button press in parPVNSV.
function parPVNSV_Callback(hObject, eventdata, handles)
% hObject    handle to parPVNSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPVNSV

global flag_output;
flag_output.parPVNSV = get(hObject,'Value');


% --- Executes on button press in parPVRF.
function parPVRF_Callback(hObject, eventdata, handles)
% hObject    handle to parPVRF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPVRF

global flag_output;
flag_output.parPVRF = get(hObject,'Value');


% --- Executes on button press in parPRT1_2H.
function parPRT1_2H_Callback(hObject, eventdata, handles)
% hObject    handle to parPRT1_2H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPRT1_2H

global flag_output;
flag_output.parPRT1_2H = get(hObject,'Value');


% --- Executes on button press in parPRT1_2D.
function parPRT1_2D_Callback(hObject, eventdata, handles)
% hObject    handle to parPRT1_2D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPRT1_2D

global flag_output;
flag_output.parPRT1_2D = get(hObject,'Value');


% --- Executes on button press in parPVPV.
function parPVPV_Callback(hObject, eventdata, handles)
% hObject    handle to parPVPV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPVPV

global flag_output;
flag_output.parPVPV = get(hObject,'Value');


% --- Executes on button press in parPVPG.
function parPVPG_Callback(hObject, eventdata, handles)
% hObject    handle to parPVPG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPVPG

global flag_output;
flag_output.parPVPG = get(hObject,'Value');


% --- Executes on button press in parPVMG.
function parPVMG_Callback(hObject, eventdata, handles)
% hObject    handle to parPVMG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPVMG

global flag_output;
flag_output.parPVMG = get(hObject,'Value');


% --- Executes on button press in parTVFSV.
function parTVFSV_Callback(hObject, eventdata, handles)
% hObject    handle to parTVFSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parTVFSV

global flag_output;
flag_output.parTVFSV = get(hObject,'Value');


% --- Executes on button press in parTVRV.
function parTVRV_Callback(hObject, eventdata, handles)
% hObject    handle to parTVRV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parTVRV

global flag_output;
flag_output.parTVRV = get(hObject,'Value');


% --- Executes on button press in parTVNSV.
function parTVNSV_Callback(hObject, eventdata, handles)
% hObject    handle to parTVNSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parTVNSV

global flag_output;
flag_output.parTVNSV = get(hObject,'Value');


% --- Executes on button press in parTVRF.
function parTVRF_Callback(hObject, eventdata, handles)
% hObject    handle to parTVRF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parTVRF

global flag_output;
flag_output.parTVRF = get(hObject,'Value');


% --- Executes on button press in parTRT1_2H.
function parTRT1_2H_Callback(hObject, eventdata, handles)
% hObject    handle to parTRT1_2H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parTRT1_2H

global flag_output;
flag_output.parTRT1_2H = get(hObject,'Value');


% --- Executes on button press in parTRT1_2D.
function parTRT1_2D_Callback(hObject, eventdata, handles)
% hObject    handle to parTRT1_2D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parTRT1_2D

global flag_output;
flag_output.parTRT1_2D = get(hObject,'Value');


% --- Executes on button press in parTVPVE.
function parTVPVE_Callback(hObject, eventdata, handles)
% hObject    handle to parTVPVE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parTVPVE

global flag_output;
flag_output.parTVPVE = get(hObject,'Value');


% --- Executes on button press in parTVPG.
function parTVPG_Callback(hObject, eventdata, handles)
% hObject    handle to parTVPG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parTVPG

global flag_output;
flag_output.parTVPG = get(hObject,'Value');


% --- Executes on button press in parTVMG.
function parTVMG_Callback(hObject, eventdata, handles)
% hObject    handle to parTVMG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parTVMG

global flag_output;
flag_output.parTVMG = get(hObject,'Value');


% --- Executes on button press in parAoSBP.
function parAoSBP_Callback(hObject, eventdata, handles)
% hObject    handle to parAoSBP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAoSBP

global flag_output;
flag_output.parAoSBP = get(hObject,'Value');


% --- Executes on button press in parAoDBP.
function parAoDBP_Callback(hObject, eventdata, handles)
% hObject    handle to parAoDBP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAoDBP

global flag_output;
flag_output.parApDBP = get(hObject,'Value');


% --- Executes on button press in parAoPP.
function parAoPP_Callback(hObject, eventdata, handles)
% hObject    handle to parAoPP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAoPP

global flag_output;
flag_output.parAoPP = get(hObject,'Value');


% --- Executes on button press in parAoEa.
function parAoEa_Callback(hObject, eventdata, handles)
% hObject    handle to parAoEa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parAoEa

global flag_output;
flag_output.parAoEa = get(hObject,'Value');


% --- Executes on button press in parVAC.
function parVAC_Callback(hObject, eventdata, handles)
% hObject    handle to parVAC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parVAC

global flag_output;
flag_output.parVAC = get(hObject,'Value');


% --- Executes on button press in parSysSV.
function parSysSV_Callback(hObject, eventdata, handles)
% hObject    handle to parSysSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parSysSV

global flag_output;
flag_output.parSysSV = get(hObject,'Value');


% --- Executes on button press in parSysCO.
function parSysCO_Callback(hObject, eventdata, handles)
% hObject    handle to parSysCO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parSysCO

global flag_output;
flag_output.parSysCO = get(hObject,'Value');


% --- Executes on button press in parSVmaxBP.
function parSVmaxBP_Callback(hObject, eventdata, handles)
% hObject    handle to parSVmaxBP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parSVmaxBP

global flag_output;
flag_output.parSVmaxBP = get(hObject,'Value');


% --- Executes on button press in parSVminBP.
function parSVminBP_Callback(hObject, eventdata, handles)
% hObject    handle to parSVminBP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parSVminBP

global flag_output;
flag_output.parSVminBP = get(hObject,'Value');


% --- Executes on button press in parSVmeanBP.
function parSVmeanBP_Callback(hObject, eventdata, handles)
% hObject    handle to parSVmeanBP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parSVmeanBP

global flag_output;
flag_output.parSVmeanBP = get(hObject,'Value');


% --- Executes on button press in parIVCpeakS.
function parIVCpeakS_Callback(hObject, eventdata, handles)
% hObject    handle to parIVCpeakS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parIVCpeakS

global flag_output;
flag_output.parIVCpeakS = get(hObject,'Value');


% --- Executes on button press in parIVCpeakD.
function parIVCpeakD_Callback(hObject, eventdata, handles)
% hObject    handle to parIVCpeakD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parIVCpeakD

global flag_output;
flag_output.parIVCpeakD = get(hObject,'Value');


% --- Executes on button press in parIVCpeakAR.
function parIVCpeakAR_Callback(hObject, eventdata, handles)
% hObject    handle to parIVCpeakAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parIVCpeakAR

global flag_output;
flag_output.parIVCpeakAR = get(hObject,'Value');

% --- Executes on button press in parIVCpeakVR.
function parIVCpeakVR_Callback(hObject, eventdata, handles)
% hObject    handle to parIVCpeakVR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parIVCpeakVR

global flag_output;
flag_output.parIVCpeakVR = get(hObject,'Value');


% --- Executes on button press in parPulmSV.
function parPulmSV_Callback(hObject, eventdata, handles)
% hObject    handle to parPulmSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPulmSV

global flag_output;
flag_output.parPulmSV = get(hObject,'Value');


% --- Executes on button press in parPulmCO.
function parPulmCO_Callback(hObject, eventdata, handles)
% hObject    handle to parPulmCO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPulmCO

global flag_output;
flag_output.parPulmCO = get(hObject,'Value');


% --- Executes on button press in parPveinPeakS.
function parPveinPeakS_Callback(hObject, eventdata, handles)
% hObject    handle to parPveinPeakS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPveinPeakS

global flag_output;
flag_output.parPveinPeakS = get(hObject,'Value');


% --- Executes on button press in parPveinPeakD.
function parPveinPeakD_Callback(hObject, eventdata, handles)
% hObject    handle to parPveinPeakD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPveinPeakD

global flag_output;
flag_output.parPveinPeakD = get(hObject,'Value');


% --- Executes on button press in parPveinPeakAR.
function parPveinPeakAR_Callback(hObject, eventdata, handles)
% hObject    handle to parPveinPeakAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPveinPeakAR

global flag_output;
flag_output.parPveinPeakAR = get(hObject,'Value');


% --- Executes on button press in parPveinPeakVR.
function parPveinPeakVR_Callback(hObject, eventdata, handles)
% hObject    handle to parPveinPeakVR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parPveinPeakVR

global flag_output;
flag_output.parPveinPeakVR = get(hObject,'Value');


% --- Executes on button press in parBloodVol.
function parBloodVol_Callback(hObject, eventdata, handles)
% hObject    handle to parBloodVol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parBloodVol

global flag_output;
flag_output.parBloodVol = get(hObject,'Value');


% --- Executes on button press in parMat.
function parMat_Callback(hObject, eventdata, handles)
% hObject    handle to parMat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMat

global flag_output;
flag_output.parMat = get(hObject,'Value');


% --- Executes on button press in parexcel.
function parexcel_Callback(hObject, eventdata, handles)
% hObject    handle to parexcel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parexcel

global flag_output;
flag_output.parexcel = get(hObject,'Value');


% --- Executes on button press in parMVPVA.
function parMVPVA_Callback(hObject, eventdata, handles)
% hObject    handle to parMVPVA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parMVPVA

global flag_output;
flag_output.parMVPVA = get(hObject,'Value');


% --- Executes on button press in parTVPVA.
function parTVPVA_Callback(hObject, eventdata, handles)
% hObject    handle to parTVPVA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parTVPVA

global flag_output;
flag_output.parTVPVA = get(hObject,'Value');
