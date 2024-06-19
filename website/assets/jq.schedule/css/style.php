.jq-schedule * {
  box-sizing: border-box; }

.jq-schedule .sc_wrapper:after,
.jq-schedule .sc_menu:after {
  content: "";
  display: table;
  clear: both; }

.jq-schedule .sc_menu {
  width: 100%;
  height: 26px; }
  .jq-schedule .sc_menu .sc_header_cell {
    float: left; }
  .jq-schedule .sc_menu .sc_header {
    float: left;
    height: 26px;
    position: relative;
    overflow: hidden; }
    .jq-schedule .sc_menu .sc_header .sc_time {
      text-align: center;
      border-left: solid 1px #fff;
      background: #555; }

.jq-schedule .sc_menu .sc_header_cell,
.jq-schedule .sc_data {
  float: left;
  font-weight: bold;
  color: #fff;
  background: #555;
  position: relative; }

.jq-schedule .sc_menu .sc_header_scroll,
.jq-schedule .sc_data .sc_data_scroll {
  position: absolute;
  left: 0;
  top: 0; }

.jq-schedule .sc_menu .sc_header_cell,
.jq-schedule .sc_header .sc_time,
.jq-schedule .sc_main_scroll .sc_time {
  color: #fff;
  padding: 0;
  line-height: 26px;
  height: 26px;
  display: block; }

.jq-schedule .sc_header .sc_time,
.jq-schedule .sc_main_scroll .sc_time {
  float: left; }

.jq-schedule .sc_main_box,
.jq-schedule .sc_data {
  /*max-height: 800px;
  overflow: hidden; */
}

.jq-schedule .sc_main_box {
  float: left;
  overflow-x: auto;
  overflow-y: auto; }

.jq-schedule .sc_main {
  position: relative; }

.jq-schedule .timeline {
  position: relative; }

.jq-schedule .ui-draggable-dragging,
.jq-schedule .ui-resizeable {
  z-index: 20; }

.jq-schedule .sc_bar {
  position: absolute;
  color: #fff;
  background: #4f93d6;
  cursor: pointer;
  z-index: 10; }
  .jq-schedule .sc_bar .head {
    display: block;
    margin-top: 6px;
    font-size: 12px;
    padding: 0 14px;
    height: 1.2em;
    overflow: hidden; }
  .jq-schedule .sc_bar .text {
    display: block;
    margin-top: 6px;
    font-weight: bold;
    padding: 0 14px;
    height: 1.2em;
    overflow: hidden; }
  .jq-schedule .sc_bar .ui-resizable-handle {
    display: block;
    content: ' ';
    position: absolute;
    height: 100%;
    right: 0;
    top: 0;
    width: 5px;
    background: #2e7ac4; }
    .jq-schedule .sc_bar .ui-resizable-handle.ui-resizable-e {
      right: 0; }
    .jq-schedule .sc_bar .ui-resizable-handle.ui-resizable-w {
      left: 0; }


.jq-schedule .sc_data .timeline {
  overflow: hidden;
  padding: 10px; }
  .jq-schedule .sc_data .timeline span {
    display: block; }
    .jq-schedule .sc_data .timeline span.timeline-subtitle {
      font-size: 0.8em;
      color: #cccccc; }

.jq-schedule .sc_main_scroll .sc_main .tl {
  float: left;
  height: 100%;
  border-right: solid 1px #ccc; }
  .jq-schedule .sc_main_scroll .sc_main .tl:hover {
    background: #f0f0f0; }

.jq-schedule .ui-state-disabled {
  opacity: 1; }
  .jq-schedule .ui-state-disabled .ui-resizable-handle {
    display: none; }
    .jq-schedule .ui-state-disabled .ui-resizable-handle:hover {
      cursor: auto; }

.jq-schedule .ui-draggable-disabled {
  opacity: 0.8; }
