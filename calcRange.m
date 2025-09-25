function [bestRange,maxLD] = calcRange(V,LoverD)
    [maxLD,idx] = max(LoverD);
    bestRange = V(idx);
end
