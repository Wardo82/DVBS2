function localLogData(out_y_out, out_delayed_xout, out_ref_y_out, out_ref_delayed_xout)
global gEMLSimLogVal_out_y_out;
global gEMLSimLogVal_out_delayed_xout;
global gEMLSimLogVal_out_ref_y_out;
global gEMLSimLogVal_out_ref_delayed_xout;
global gEMLSimLogRunIdx;
persistent maxIdx;

if isempty(gEMLSimLogRunIdx)
	gEMLSimLogRunIdx = 1;
	maxIdx = 1;
	if isstruct(out_y_out)
		gEMLSimLogVal_out_y_out = out_y_out;
	elseif isscalar(out_y_out)
		gEMLSimLogVal_out_y_out = out_y_out;
	elseif iscolumn(out_y_out)
		gEMLSimLogVal_out_y_out = out_y_out.';
	elseif isrow(out_y_out)
		gEMLSimLogVal_out_y_out = out_y_out;
	else
		gEMLSimLogVal_out_y_out = {out_y_out};
	end

	if isstruct(out_delayed_xout)
		gEMLSimLogVal_out_delayed_xout = out_delayed_xout;
	elseif isscalar(out_delayed_xout)
		gEMLSimLogVal_out_delayed_xout = out_delayed_xout;
	elseif iscolumn(out_delayed_xout)
		gEMLSimLogVal_out_delayed_xout = out_delayed_xout.';
	elseif isrow(out_delayed_xout)
		gEMLSimLogVal_out_delayed_xout = out_delayed_xout;
	else
		gEMLSimLogVal_out_delayed_xout = {out_delayed_xout};
	end

	if isstruct(out_ref_y_out)
		gEMLSimLogVal_out_ref_y_out = out_ref_y_out;
	elseif isscalar(out_ref_y_out)
		gEMLSimLogVal_out_ref_y_out = out_ref_y_out;
	elseif iscolumn(out_ref_y_out)
		gEMLSimLogVal_out_ref_y_out = out_ref_y_out.';
	elseif isrow(out_ref_y_out)
		gEMLSimLogVal_out_ref_y_out = out_ref_y_out;
	else
		gEMLSimLogVal_out_ref_y_out = {out_ref_y_out};
	end

	if isstruct(out_ref_delayed_xout)
		gEMLSimLogVal_out_ref_delayed_xout = out_ref_delayed_xout;
	elseif isscalar(out_ref_delayed_xout)
		gEMLSimLogVal_out_ref_delayed_xout = out_ref_delayed_xout;
	elseif iscolumn(out_ref_delayed_xout)
		gEMLSimLogVal_out_ref_delayed_xout = out_ref_delayed_xout.';
	elseif isrow(out_ref_delayed_xout)
		gEMLSimLogVal_out_ref_delayed_xout = out_ref_delayed_xout;
	else
		gEMLSimLogVal_out_ref_delayed_xout = {out_ref_delayed_xout};
	end

	gEMLSimLogRunIdx = gEMLSimLogRunIdx+1;
	return

end

if gEMLSimLogRunIdx > maxIdx
	maxIdx = 2 * maxIdx;
	if(iscell(gEMLSimLogVal_out_y_out))
		gEMLSimLogVal_out_y_out(maxIdx, :) = {gEMLSimLogVal_out_y_out{1}};
	else
		gEMLSimLogVal_out_y_out(maxIdx, :) = gEMLSimLogVal_out_y_out(1);
	end
	if(iscell(gEMLSimLogVal_out_delayed_xout))
		gEMLSimLogVal_out_delayed_xout(maxIdx, :) = {gEMLSimLogVal_out_delayed_xout{1}};
	else
		gEMLSimLogVal_out_delayed_xout(maxIdx, :) = gEMLSimLogVal_out_delayed_xout(1);
	end
	if(iscell(gEMLSimLogVal_out_ref_y_out))
		gEMLSimLogVal_out_ref_y_out(maxIdx, :) = {gEMLSimLogVal_out_ref_y_out{1}};
	else
		gEMLSimLogVal_out_ref_y_out(maxIdx, :) = gEMLSimLogVal_out_ref_y_out(1);
	end
	if(iscell(gEMLSimLogVal_out_ref_delayed_xout))
		gEMLSimLogVal_out_ref_delayed_xout(maxIdx, :) = {gEMLSimLogVal_out_ref_delayed_xout{1}};
	else
		gEMLSimLogVal_out_ref_delayed_xout(maxIdx, :) = gEMLSimLogVal_out_ref_delayed_xout(1);
	end
end

if isstruct(out_y_out)
	gEMLSimLogVal_out_y_out(gEMLSimLogRunIdx, :) = out_y_out;
elseif isscalar(out_y_out)
	gEMLSimLogVal_out_y_out(gEMLSimLogRunIdx, :) = out_y_out;
elseif iscolumn(out_y_out)
	gEMLSimLogVal_out_y_out(gEMLSimLogRunIdx, :) = out_y_out.';
elseif(isrow(out_y_out))
	gEMLSimLogVal_out_y_out(gEMLSimLogRunIdx, :) = out_y_out;
else
	gEMLSimLogVal_out_y_out(gEMLSimLogRunIdx, :) = {out_y_out};
end

if isstruct(out_delayed_xout)
	gEMLSimLogVal_out_delayed_xout(gEMLSimLogRunIdx, :) = out_delayed_xout;
elseif isscalar(out_delayed_xout)
	gEMLSimLogVal_out_delayed_xout(gEMLSimLogRunIdx, :) = out_delayed_xout;
elseif iscolumn(out_delayed_xout)
	gEMLSimLogVal_out_delayed_xout(gEMLSimLogRunIdx, :) = out_delayed_xout.';
elseif(isrow(out_delayed_xout))
	gEMLSimLogVal_out_delayed_xout(gEMLSimLogRunIdx, :) = out_delayed_xout;
else
	gEMLSimLogVal_out_delayed_xout(gEMLSimLogRunIdx, :) = {out_delayed_xout};
end

if isstruct(out_ref_y_out)
	gEMLSimLogVal_out_ref_y_out(gEMLSimLogRunIdx, :) = out_ref_y_out;
elseif isscalar(out_ref_y_out)
	gEMLSimLogVal_out_ref_y_out(gEMLSimLogRunIdx, :) = out_ref_y_out;
elseif iscolumn(out_ref_y_out)
	gEMLSimLogVal_out_ref_y_out(gEMLSimLogRunIdx, :) = out_ref_y_out.';
elseif(isrow(out_ref_y_out))
	gEMLSimLogVal_out_ref_y_out(gEMLSimLogRunIdx, :) = out_ref_y_out;
else
	gEMLSimLogVal_out_ref_y_out(gEMLSimLogRunIdx, :) = {out_ref_y_out};
end

if isstruct(out_ref_delayed_xout)
	gEMLSimLogVal_out_ref_delayed_xout(gEMLSimLogRunIdx, :) = out_ref_delayed_xout;
elseif isscalar(out_ref_delayed_xout)
	gEMLSimLogVal_out_ref_delayed_xout(gEMLSimLogRunIdx, :) = out_ref_delayed_xout;
elseif iscolumn(out_ref_delayed_xout)
	gEMLSimLogVal_out_ref_delayed_xout(gEMLSimLogRunIdx, :) = out_ref_delayed_xout.';
elseif(isrow(out_ref_delayed_xout))
	gEMLSimLogVal_out_ref_delayed_xout(gEMLSimLogRunIdx, :) = out_ref_delayed_xout;
else
	gEMLSimLogVal_out_ref_delayed_xout(gEMLSimLogRunIdx, :) = {out_ref_delayed_xout};
end

gEMLSimLogRunIdx = gEMLSimLogRunIdx+1;

