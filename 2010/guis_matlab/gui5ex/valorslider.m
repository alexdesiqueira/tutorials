function varargout = valorslider(varargin)
% VALORSLIDER M-file for valorslider.fig
%      VALORSLIDER, by itself, creates a new VALORSLIDER or raises the existing
%      singleton*.
%
%      H = VALORSLIDER returns the handle to a new VALORSLIDER or the handle to
%      the existing singleton*.
%
%      VALORSLIDER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VALORSLIDER.M with the given input arguments.
%
%      VALORSLIDER('Property','Value',...) creates a new VALORSLIDER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before valorslider_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to valorslider_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help valorslider

% Last Modified by GUIDE v2.5 04-Aug-2010 02:21:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @valorslider_OpeningFcn, ...
                   'gui_OutputFcn',  @valorslider_OutputFcn, ...
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


% --- Executes just before valorslider is made visible.
function valorslider_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to valorslider (see VARARGIN)

% Choose default command line output for valorslider
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes valorslider wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = valorslider_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Encontra o valor do slider
valor = get(handles.slider1,'Value');

% Copia o valor no rótulo de texto
str = sprintf('%.2f',valor);
set(handles.text1,'String',str);


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
