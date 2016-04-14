
function plotSymbolization(timeseries, subsequencesIdx, symbols)
    narginchk(3,3);
    [nTimeStamps, nDims] = size(timeseries);
    if nTimeStamps < nDims
        warning('Each dimension of time series should be arranged columnwisely\n');
    end
    v_timeseries = timeseries(:,1);
%     shift = (max(v_timeseries) - min(v_timeseries))/10;
    
    featIdx = subsequencesIdx;
    featMag = v_timeseries(featIdx);
    
    figure; 
    plot(v_timeseries, 'color', 'b', 'linewidth',1);
    hold on;
    plot(featIdx, featMag, 'linestyle', 'none', 'marker', 'o', ...
                        'markerEdgeColor', 'r', 'markerSize', 6, 'lineWidth',1);
                    
    hold on;
    for i=1:length(symbols)
        text(featIdx(i), featMag(i), num2str(symbols(i)), 'color', 'k', 'fontsize', 15); hold on;
    end
    
%     set (gcf, 'Units', 'normalized', 'Position', [0,0,1,1]);
% 	set(gca,    'xtick',[],'ytick',[] , 'XColor', [1 1 1], 'YColor', [1 1 1])  ;
%     axis tight;
    
    
end